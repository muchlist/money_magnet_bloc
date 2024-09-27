import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:money_magnet_bloc/src/common/theme/app_sizes.dart';
import 'package:money_magnet_bloc/src/common/theme/colors.dart';
import 'package:money_magnet_bloc/src/common/theme/ui_helper.dart';
import 'package:money_magnet_bloc/src/common/utils/validate.dart';
import 'package:money_magnet_bloc/src/common/widgets/disable_glow.dart';
import 'package:money_magnet_bloc/src/common/widgets/snackbar.dart';
import 'package:money_magnet_bloc/src/common/widgets/text_field.dart';
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
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _emailTC = TextEditingController();
  final _passwordTC = TextEditingController();

  bool _isObscure = true;

  @override
  void dispose() {
    _emailTC.dispose();
    _passwordTC.dispose();
    super.dispose();
  }

  void _login() {
    if (_formKey.currentState?.validate() ?? false) {
      String email = _emailTC.text;
      String password = _passwordTC.text;

      // ** trigger bloc event
      context.read<AuthBloc>().add(AuthEvent.signIn(email, password));
    }
  }

  void _toggleObscure() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    // AuthBloc userBloc = context.read<AuthBloc>();

    return BlocListener<AuthBloc, AuthState>(
      // bloc: userBloc,
      listener: (context, state) {
        state.maybeWhen(
          authenticated: () {
            AutoRouter.of(context).replace(const NavigationRoute());
          },
          failure: (failure) {
            showToastError(context: context, message: failure, onTop: false);
          },
          orElse: () {},
        );
      },
      child: Form(
        key: _formKey,
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
                  .copyWith(color: AppColor.blackColor),
              textAlign: TextAlign.left,
            ),
            gapH24,

            // Input for email
            AppTextField(
              controller: _emailTC,
              label: 'Email',
              showLabel: true,
              validator: (String? text) {
                if (text == null || text.isEmpty) {
                  return 'Email cannot be empty';
                }
                if (!Validator().isValidEmail(text)) {
                  return 'Email format is not valid';
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
            ),

            gapH12,

            AppTextField(
              controller: _passwordTC,
              label: 'Password',
              obscureText: _isObscure,
              showLabel: true,
              suffixIcon: IconButton(
                iconSize: 18,
                icon: Icon(_isObscure
                    ? Icons.visibility_rounded
                    : Icons.visibility_off_rounded),
                onPressed: _toggleObscure,
              ),
              validator: (String? text) {
                if (text == null || text.isEmpty) {
                  return 'Password cannot be empty';
                }
                return null;
              },
            ),

            gapH24,
            BlocBuilder<AuthBloc, AuthState>(
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
}
