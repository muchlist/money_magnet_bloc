import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_magnet_bloc/src/common/widgets/blue_button.dart';
import 'package:money_magnet_bloc/src/common/widgets/white_button.dart';
import 'package:money_magnet_bloc/src/features/app_state/cubit/global/global_cubit.dart';

class DummyPage extends StatelessWidget {
  const DummyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularButton(
        title: 'LOGOUT',
        onPressed: () {
          // ** trigger bloc event
          context.read<GlobalCubit>().forceLogout();
        },
      ),
    );
  }
}
