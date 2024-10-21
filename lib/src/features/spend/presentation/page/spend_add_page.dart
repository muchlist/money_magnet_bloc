import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:money_magnet_bloc/src/common/theme/app_sizes.dart';
import 'package:money_magnet_bloc/src/common/theme/colors.dart';
import 'package:money_magnet_bloc/src/common/widgets/disable_glow.dart';
import 'package:money_magnet_bloc/src/common/widgets/snackbar.dart';
import 'package:money_magnet_bloc/src/common/widgets/text_field.dart';
import 'package:money_magnet_bloc/src/common/widgets/white_button.dart';
import 'package:money_magnet_bloc/src/features/spend/bloc/export.dart';
import 'package:money_magnet_bloc/src/features/spend/repo/spend_dto.dart';

/*
The SpendAddPage depend to SpendListBloc, which is initiated by the pocket detail. 
So, this route cannot be used by the spend function in the home widget.
*/
@RoutePage()
class SpendAddPage extends StatelessWidget {
  const SpendAddPage({super.key, required this.bloc, required this.pocketID});

  final SpendListBloc bloc;
  final String pocketID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Transaction",
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: AppColor.blackColor),
        ),
      ),
      body: BlocProvider(
        create: (context) => bloc,
        child: SpendAddPageBody(pocketID: pocketID),
      ),
    );
  }
}

class SpendAddPageBody extends StatefulWidget {
  const SpendAddPageBody({super.key, required this.pocketID});

  final String pocketID;

  @override
  State<SpendAddPageBody> createState() => _SpendAddPageBodyState();
}

class _SpendAddPageBodyState extends State<SpendAddPageBody> {
  final GlobalKey<FormState> _formAddSpendkey = GlobalKey<FormState>();

  final _transactionNameTC = TextEditingController();
  final int _selectedType = 3;
  final String _spendDate = "2024-10-21T19:24:31.777+08:00";

  void _addSpend() async {
    if (_formAddSpendkey.currentState?.validate() ?? false) {
      final payload = SpendReqDTO(
        pocketID: widget.pocketID,
        categoryID: "01J7QVGPM105H3BTRWT2Q28RJP", // hardcode
        name: _transactionNameTC.text,
        price: -50000, // hardcode
        type: _selectedType,
        date: _spendDate,
      );

      // ** send event to SpendListBloc
      context.read<SpendListBloc>().add(
            SpendListEvent.addSpend(payload),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SpendListBloc, SpendListState>(
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
            Text("Kamu namakan transaksi ini ini?",
                style: Theme.of(context).textTheme.headlineSmall!),
            gapH24,
            Form(
              key: _formAddSpendkey,
              child: AppTextField(
                controller: _transactionNameTC,
                label: 'Nama Transaksi',
                showLabel: true,
                validator: (String? text) {
                  if (text == null || text.isEmpty) {
                    return 'nama transaksi tidak boleh kosong';
                  }
                  return null;
                },
              ),
            ),
            gapH12,

            // ** Block Builder
            BlocBuilder<SpendListBloc, SpendListState>(
              builder: (context, state) {
                return state.maybeWhen(loading: (pockets) {
                  return const ButtonWLoading(title: "Sedang memuat...");
                }, orElse: () {
                  return ButtonW(
                    title: "Tambahkan",
                    onPressed: _addSpend,
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
