import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:money_magnet_bloc/src/common/constant/pocket_icon.dart';
import 'package:money_magnet_bloc/src/common/theme/app_sizes.dart';
import 'package:money_magnet_bloc/src/common/theme/colors.dart';
import 'package:money_magnet_bloc/src/common/widgets/disable_glow.dart';
import 'package:money_magnet_bloc/src/common/widgets/snackbar.dart';
import 'package:money_magnet_bloc/src/common/widgets/text_field.dart';
import 'package:money_magnet_bloc/src/common/widgets/white_button.dart';
import 'package:money_magnet_bloc/src/features/pocket/bloc/export.dart';

@RoutePage()
class PocketAddPage extends StatelessWidget {
  const PocketAddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Pocket",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: AppColor.blackColor),
        ),
      ),
      body: const PocketAddPageBody(),
    );
  }
}

class PocketAddPageBody extends StatefulWidget {
  const PocketAddPageBody({super.key});

  @override
  State<PocketAddPageBody> createState() => _PocketAddPageBodyState();
}

class _PocketAddPageBodyState extends State<PocketAddPageBody> {
  final GlobalKey<FormState> _formAddPocketkey = GlobalKey<FormState>();
  final _pocketNameTC = TextEditingController();

  int _selectedIconIndex = 0;

  void _addPocket() async {
    if (_formAddPocketkey.currentState?.validate() ?? false) {
      // ** send event to PocketListBloc
      context.read<PocketListBloc>().add(
            PocketListEvent.addPocket(
              _pocketNameTC.text, // pocket name
              '', // pocket currency
              _selectedIconIndex + 1, // pocket icon
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<PocketListBloc, PocketListState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (_, __) {
            AutoRouter.of(context).maybePop();
          },
          failure: (pockets, failure) {
            showToastError(context: context, message: failure);
          },
          orElse: () {},
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: DisableGlow(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Kamu namakan apa dompet ini?",
                style: Theme.of(context).textTheme.headlineSmall!),
            gapH24,
            Form(
              key: _formAddPocketkey,
              child: AppTextField(
                controller: _pocketNameTC,
                label: 'Nama dompet',
                showLabel: true,
                validator: (String? text) {
                  if (text == null || text.isEmpty) {
                    return 'nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
            ),
            gapH12,
            SizedBox(
              height: 60,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: getIconList().length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIconIndex = index;
                        });
                      },
                      child: Container(
                        width:
                            60.0, // Sesuaikan dengan lebar yang Anda inginkan
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: _selectedIconIndex == index
                                ? Colors.lightGreen
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          getIcon(index + 1),
                          style: const TextStyle(
                              fontSize: 24.0), // Sesuaikan ukuran teks
                        ),
                      ),
                    );
                  }),
            ),
            gapH12,

            // ** Block Builder
            BlocBuilder<PocketListBloc, PocketListState>(
              builder: (context, state) {
                return state.maybeWhen(loading: (pockets) {
                  return const ButtonWLoading(title: "Sedang memuat...");
                }, orElse: () {
                  return ButtonW(
                    title: "Tambahkan",
                    onPressed: _addPocket,
                  );
                });
              },
            ),
            gapH12,
          ],
        )),
      ),
    );
  }
}
