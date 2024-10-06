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
import 'package:money_magnet_bloc/src/features/pocket/entity/pocket.dart';
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
    // ** BlocListener PocketListBloc
    return BlocListener<PocketListBloc, PocketListState>(
      listener: (context, state) {
        state.maybeWhen(
          failure: (pockets, failure) {
            showToastError(context: context, message: failure);
          },
          orElse: () {},
        );
      },
      child: DisableGlow(
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
                // ** BlocSelector PocketListBloc
                child: BlocSelector<PocketListBloc, PocketListState, String>(
                  selector: (state) {
                    int balancInfo = 0;
                    for (var pocket in state.pockets) {
                      balancInfo = balancInfo + pocket.balance;
                    }
                    return balancInfo.toCurrencyString();
                  },
                  builder: (context, balance) {
                    return BalanceWidget(
                      balanceValue: balance,
                      editors: const [],
                    );
                  },
                ),
              ),
            ),
            SliverPadding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              // ** BlocBuilder PocketListBloc
              sliver: BlocBuilder<PocketListBloc, PocketListState>(
                builder: (context, state) {
                  return state.when(
                    initial: (pockets) {
                      return PocketsSliverGrid(
                        pockets: pockets,
                        isLoading: true,
                      );
                    },
                    loading: (pockets) {
                      return PocketsSliverGrid(
                        pockets: pockets,
                        isLoading: true,
                      );
                    },
                    success: (pockets, _) {
                      return PocketsSliverGrid(
                        pockets: pockets,
                        isLoading: false,
                      );
                    },
                    failure: (pockets, failure) {
                      return PocketsSliverGrid(
                        pockets: pockets,
                        isLoading: false,
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PocketsSliverGrid extends StatelessWidget {
  const PocketsSliverGrid({
    super.key,
    required this.pockets,
    required this.isLoading,
  });

  final List<Pocket> pockets;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.3 / 1,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          if (isLoading) {
            return const ShimmerPocketWidget();
          }
          if (index == pockets.length) {
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
              AutoRouter.of(context).push(
                PocketDetailRoute(pocketDetail: pockets[index]),
              );
            },
            child: PocketWidget(
              name: pockets[index].pocketName,
              balance: pockets[index].balance.toCurrencyString(),
              icon: pockets[index].icon,
            ),
          );
        },
        childCount: pockets.length + 1,
      ),
    );
  }
}
