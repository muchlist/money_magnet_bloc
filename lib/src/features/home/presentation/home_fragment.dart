import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:money_magnet_bloc/src/common/theme/colors.dart';
import 'package:money_magnet_bloc/src/common/utils/async_runner.dart';
import 'package:money_magnet_bloc/src/common/utils/strings.dart';
import 'package:money_magnet_bloc/src/common/widgets/disable_glow.dart';
import 'package:money_magnet_bloc/src/common/widgets/pocket_monitor_widget.dart';
import 'package:money_magnet_bloc/src/common/widgets/pockets_home_widget.dart';
import 'package:money_magnet_bloc/src/common/widgets/shimmer/shimmer_pocket_home_widget.dart';
import 'package:money_magnet_bloc/src/features/home/bloc/home_pocket_detail/home_pocket_detail_cubit.dart';
import 'package:money_magnet_bloc/src/features/pocket/bloc/export.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  @override
  void initState() {
    super.initState();
    runAsync(() {
      context.read<HomePocketDetailCubit>().loadDetailPocket(
          '01J89Y8C03H36GJ91NR7V4ZXMF',
          skipIfLoaded: true); // TODO hardcoded
    });
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
          // const SliverPadding(
          //   padding: EdgeInsets.only(left: 16, top: 8, right: 16),
          //   sliver: SliverToBoxAdapter(
          //     child: BalanceWidget(
          //       balanceValue: "Rp 500.0000",
          //       editors: [],
          //     ),
          //   ),
          // ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BlocBuilder<HomePocketDetailCubit, PocketDetailState>(
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
                  PocketMonitorWidget(),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hari ini",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "- 200.000",
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
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const SizedBox();
                  // return const SpendTileWidget(detail: null,);
                },
                childCount: 4, // 5 list items
              ),
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
                    "Agustus --",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "- 7.000.000",
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
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const SizedBox();
                  // return const SpendTileWidget();
                },
                childCount: 5, // 5 list items
              ),
            ),
          ),
        ],
      ),
    );
  }
}
