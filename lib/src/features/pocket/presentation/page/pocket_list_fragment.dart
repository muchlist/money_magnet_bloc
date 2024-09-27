import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:money_magnet_bloc/src/common/theme/colors.dart';
import 'package:money_magnet_bloc/src/common/utils/async_runner.dart';
import 'package:money_magnet_bloc/src/common/utils/strings.dart';
import 'package:money_magnet_bloc/src/common/widgets/disable_glow.dart';
import 'package:money_magnet_bloc/src/common/widgets/pockets_widget.dart';
import 'package:money_magnet_bloc/src/common/widgets/shimmer/shimmer_pockets_widget.dart';
import 'package:money_magnet_bloc/src/common/widgets/snackbar.dart';
import 'package:money_magnet_bloc/src/features/pocket/bloc/export.dart';
import 'package:money_magnet_bloc/src/features/pocket/presentation/widget/balance_widget.dart';
import 'package:money_magnet_bloc/src/features/pocket/presentation/widget/pocket_add_button.dart';
import 'package:money_magnet_bloc/src/routes/app_router.gr.dart';

class PocketListFragment extends StatelessWidget {
  const PocketListFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PocketBody(),
    );
  }
}

class PocketBody extends StatefulWidget {
  const PocketBody({super.key});

  @override
  State<PocketBody> createState() => _PocketBodyState();
}

class _PocketBodyState extends State<PocketBody> {
  @override
  void initState() {
    super.initState();
    runAsync(() {
      // ** sent event to trigger load pocket list
      context.read<PocketListBloc>().add(
            const PocketListEvent.getPocketList(skipIfLoaded: true),
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PocketListBloc, PocketListState>(
      listener: (context, state) {
        state.maybeWhen(
          failure: (pockets, failure) {
            showToastError(context: context, message: failure);
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        int balancInfo = 0;
        for (var pocket in state.pockets) {
          balancInfo = balancInfo + pocket.balance;
        }

        final isLoading = state.maybeWhen(
          loading: (_) => true,
          orElse: () => false,
        );

        return DisableGlow(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                title: Text(
                  "Pockets",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: AppColor.blackColor),
                ),
                actions: const [
                  Icon(
                    LineIcons.circle,
                    size: 35,
                  ),
                  SizedBox(width: 4),
                  Icon(
                    LineIcons.infoCircle,
                    size: 35,
                  ),
                  SizedBox(width: 16),
                ],
              ),
              SliverPadding(
                padding: const EdgeInsets.only(left: 16, top: 8, right: 16),
                sliver: SliverToBoxAdapter(
                  child: BalanceWidget(
                    balanceValue: balancInfo.toCurrencyString(),
                    editors: const [],
                  ),
                ),
              ),
              SliverPadding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                sliver: SliverGrid(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.3 / 1,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      if (isLoading) {
                        return const ShimmerPocketWidget();
                      }
                      if (index == state.pockets.length) {
                        return GestureDetector(
                          onTap: () {
                            AutoRouter.of(context).push<String>(
                              const PocketAddRoute(),
                            );
                          },
                          child: const AddPocketButton(),
                        );
                      }
                      return GestureDetector(
                        onTap: () {
                          // TODO to pocket detail
                          // AutoRouter.of(context).push(
                          //   PocketRoute(pocketDetail: state.pockets[index]),
                          // );
                        },
                        child: PocketWidget(
                          name: state.pockets[index].pocketName,
                          balance:
                              state.pockets[index].balance.toCurrencyString(),
                          icon: state.pockets[index].icon,
                        ),
                      );
                    },
                    childCount: state.pockets.length + 1,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
