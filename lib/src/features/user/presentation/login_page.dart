import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:money_magnet_bloc/src/common/theme/app_sizes.dart';
import 'package:money_magnet_bloc/src/common/theme/ui_helper.dart';
import 'package:money_magnet_bloc/src/common/widgets/disable_glow.dart';
import 'package:money_magnet_bloc/src/common/widgets/input_decorator.dart';
import 'package:money_magnet_bloc/src/common/widgets/snackbar.dart';
import 'package:money_magnet_bloc/src/common/widgets/white_button.dart';
import 'package:money_magnet_bloc/src/features/user/bloc/export.dart';
import 'package:money_magnet_bloc/src/routes/app_router.gr.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: DisableGlow(
            child: SingleChildScrollView(
              child: LoginBody(),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final _emailTC = TextEditingController();
  final _passwordTC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        // Listening to state changes and showing toast notifications
        state.maybeWhen(
            orElse: () {},
            authenticated: () {
              AutoRouter.of(context).replace(const NavigationRoute());
            },
            failure: (failure) {
              showToastError(context: context, message: failure, onTop: false);
            });
      },
      child: Form(
        key: _formkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            gapH48,
            gapH48,

            Text(
              'Welcome to\nMoney Magnet',
              style: Theme.of(context).textTheme.headlineMedium!,
              textAlign: TextAlign.left,
            ),

            SizedBox(
              height: screenHeightPercentage(context, percent: 0.10),
            ),

            Text(
              'Login',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.grey),
              textAlign: TextAlign.left,
            ),

            gapH24,
            // LOGIN text edit =====================================
            TextFormField(
              style: Theme.of(context).textTheme.titleSmall!,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: mainInputDecoration("Email", null),
              validator: (String? text) {
                if (text == null || text.isEmpty) {
                  return 'Email cannot be empty';
                }
                return null;
              },
              controller: _emailTC,
            ),
            gapH12,
            // PASSWORD text edit ================================
            TextFormField(
              style: Theme.of(context).textTheme.titleSmall!,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: mainInputDecoration("Password", null),
              validator: (String? text) {
                if (text == null || text.isEmpty) {
                  return 'Password cannot be empty';
                }
                return null;
              },
              controller: _passwordTC,
            ),

            gapH24,

            BlocBuilder<UserBloc, UserState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => const ButtonWLoading(title: "Loading..."),
                  orElse: () => ButtonW(
                    title: "Login",
                    onPressed: _login,
                  ),
                );
              },
            ),

            gapH16,
          ],
        ),
      ),
    );
  }

  void _login() {
    if (_formkey.currentState?.validate() ?? false) {
      // Success
      String email = _emailTC.text;
      String password = _passwordTC.text;

      // Trigger event login
      context.read<UserBloc>().add(UserEvent.signIn(email, password));
    }
  }
}
