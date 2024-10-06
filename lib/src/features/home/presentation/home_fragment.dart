import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:money_magnet_bloc/src/common/theme/colors.dart';
import 'package:money_magnet_bloc/src/common/utils/strings.dart';
import 'package:money_magnet_bloc/src/common/widgets/disable_glow.dart';
import 'package:money_magnet_bloc/src/common/widgets/pocket_monitor_widget.dart';
import 'package:money_magnet_bloc/src/common/widgets/pockets_home_widget.dart';
import 'package:money_magnet_bloc/src/common/widgets/shimmer/shimmer_pocket_home_widget.dart';
import 'package:money_magnet_bloc/src/common/widgets/shimmer/shimmer_spend_tile_widget.dart';
import 'package:money_magnet_bloc/src/features/home/bloc/export.dart';
import 'package:money_magnet_bloc/src/features/pocket/bloc/export.dart';
import 'package:money_magnet_bloc/src/features/spend/bloc/spend_list/spend_list_bloc.dart';
import 'package:money_magnet_bloc/src/features/spend/entity/spend_helper.dart';
import 'package:money_magnet_bloc/src/features/spend/presentation/widget/spend_tile_widget.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (context.mounted) {
      // this will trigger listener when success in line 83-99
      context
          .read<HomePocketDetailCubit>()
          .loadDetailMainPocket(skipIfLoaded: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DisableGlow(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text(
              "Home",
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
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ** block builder HomePocketDetailCubit
                  BlocConsumer<HomePocketDetailCubit, PocketDetailState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        data: (detail) {
                          // ** trigger loading spend when Pocket Detail Cubit Loaded
                          context.read<HomeSpendListBloc>().add(
                                SpendListEvent.getSpendList(detail.id,
                                    skipIfLoaded: true),
                              );
                        },
                      );
                    },
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () {
                          return PocketHomeWidget(
                            name: state.detail.pocketName,
                            balance: state.detail.balance.toCurrencyString(),
                            icon: state.detail.icon,
                          );
                        },
                        loading: (_) {
                          return const ShimmerPocketHomeWidget();
                        },
                      );
                    },
                  ),
                  // ** block builder HomeSpendSumCubit
                  BlocBuilder<HomeSpendSumCubit, HomeSpendSumState>(
                    builder: (context, state) {
                      return PocketMonitorWidget(summary: state.summary);
                    },
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            // ** block builder HomeSpendTodayCubit
            sliver: BlocBuilder<HomeSpendTodayCubit, HomeSpendTodayState>(
              builder: (context, state) {
                final spendMoney = state.spends.totalSpendMoney();

                return SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Today",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        spendMoney,
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
            ),
            // ** block builder HomeSpendTodayCubit
            sliver: BlocBuilder<HomeSpendTodayCubit, HomeSpendTodayState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const SliverToBoxAdapter(child: SizedBox.shrink());
                  },
                  loading: (spends) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return const ShimmerSpendTileWidget();
                        },
                        childCount: 2,
                      ),
                    );
                  },
                  data: (spends) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return SpendTileWidget(detail: spends[index]);
                        },
                        childCount: spends.length,
                      ),
                    );
                  },
                );
              },
            ),
          ),
          const SliverPadding(padding: EdgeInsets.only(top: 16)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Past --",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
              left: 16.0,
              right: 16.0,
            ),
            // ** block builder HomeSpendPastCubit
            sliver: BlocBuilder<HomeSpendPastCubit, HomeSpendPastState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return const SliverToBoxAdapter(child: SizedBox.shrink());
                  },
                  loading: (spends) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return const ShimmerSpendTileWidget();
                        },
                        childCount: 2,
                      ),
                    );
                  },
                  data: (spends) {
                    return SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return SpendTileWidget(detail: spends[index]);
                        },
                        childCount: spends.length,
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
