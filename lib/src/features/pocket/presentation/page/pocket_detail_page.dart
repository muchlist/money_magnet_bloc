import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:money_magnet_bloc/src/common/theme/colors.dart';
import 'package:money_magnet_bloc/src/common/widgets/button_circle.dart';
import 'package:money_magnet_bloc/src/common/widgets/disable_glow.dart';
import 'package:money_magnet_bloc/src/common/widgets/shimmer/shimmer_spend_tile_widget.dart';
import 'package:money_magnet_bloc/src/features/pocket/bloc/export.dart';
import 'package:money_magnet_bloc/src/features/pocket/entity/pocket.dart';
import 'package:money_magnet_bloc/src/features/pocket/entity/pocket_helper.dart';
import 'package:money_magnet_bloc/src/features/pocket/presentation/widget/balance_widget.dart';
import 'package:money_magnet_bloc/src/features/spend/bloc/spend_list/spend_list_bloc.dart';
import 'package:money_magnet_bloc/src/features/spend/entity/spend.dart';
import 'package:money_magnet_bloc/src/features/spend/presentation/widget/spend_tile_widget.dart';
import 'package:money_magnet_bloc/src/features/spend/service/spend_service.dart';
import 'package:money_magnet_bloc/src/routes/app_router.gr.dart';
import 'package:money_magnet_bloc/src/service_locator/service_locator.dart';

@RoutePage()
class PocketDetailPage extends StatelessWidget {
  const PocketDetailPage(this.pocketDetail, {super.key});

  final Pocket pocketDetail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PocketDetailBody(pocketDetail: pocketDetail),
    );
  }
}

class PocketDetailBody extends StatefulWidget {
  const PocketDetailBody({
    super.key,
    required this.pocketDetail,
  });

  final Pocket pocketDetail;

  @override
  State<PocketDetailBody> createState() => _PocketDetailBodyState();
}

class _PocketDetailBodyState extends State<PocketDetailBody> {
  // ** independent bloc provider => SpendListBloc
  final spendListBloc = SpendListBloc(getIt<SpendService>());

  @override
  Widget build(BuildContext context) {
    // ** independent bloc provider => SpendListBloc
    return BlocProvider(
      create: (context) => spendListBloc
        ..add(
          // ** event trigger load spend list
          SpendListEvent.getSpendList(widget.pocketDetail.id,
              skipIfLoaded: true),
        ),
      child: BlocListener<SpendListBloc, SpendListState>(
          bloc: spendListBloc,
          listener: (context, state) {
            // TODO: implement listener
          },
          child: Stack(
            children: [
              DisableGlow(
                child: CustomScrollView(
                  slivers: [
                    // suggest : sliver masih dapat di optimasi untuk mmenghindari rebuild AppBar
                    SliverAppBar(
                      pinned: true,
                      title: Text(
                        widget.pocketDetail.pocketName,
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
                      padding: const EdgeInsets.only(
                          left: 16, top: 8, right: 16, bottom: 20),
                      sliver: SliverToBoxAdapter(
                        // ** Block Builder PocketListBloc
                        child: BlocBuilder<PocketListBloc, PocketListState>(
                          builder: (context, state) {
                            return BalanceWidget(
                              balanceValue: state.pockets.getBalanceByPocketID(
                                  widget.pocketDetail.id,
                                  viewMode: true),
                              editors: widget.pocketDetail.users
                                  .map((e) => e.name)
                                  .toList(),
                            );
                          },
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.only(
                        left: 16.0,
                        right: 16.0,
                      ),
                      // ** Block Builder SpendListBloc
                      sliver: BlocBuilder<SpendListBloc, SpendListState>(
                        builder: (context, state) {
                          final spendList = state.spends;

                          return state.maybeWhen(
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
                            orElse: () {
                              return SliverList(
                                delegate: SliverChildBuilderDelegate(
                                  (BuildContext context, int index) {
                                    Spend spend = spendList[index];
                                    return SpendTileWidget(
                                      detail: spend,
                                    );
                                  },
                                  childCount: spendList.length,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: CustomCirlceButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    AutoRouter.of(context).push(
                      SpendAddRoute(
                        bloc: spendListBloc,
                        pocketID: widget.pocketDetail.id,
                      ),
                    );
                  },
                ),
              )
            ],
          )),
    );
  }
}
