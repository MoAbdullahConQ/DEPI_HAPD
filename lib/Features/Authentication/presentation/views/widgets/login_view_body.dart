import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_button.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/custom_text_field.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/grediant_background.dart';
import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/show_snack_bar.dart';
import 'package:depi_hapd/constant.dart';
import 'package:depi_hapd/core/utils/app_router.dart';
import 'package:depi_hapd/core/utils/assets.dart';
import 'package:depi_hapd/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatefulWidget {
  LoginViewBody({super.key, required this.email, required this.password});
  String email;
  String password;
  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String mail = '';

  String goRouterLink = '';

  void determineRouterLink() {
    if (mail == 'Student@depi.com') {
      goRouterLink = AppRouter.kHomeStudentView;
    } else if (mail == 'Ministry@depi.com') {
      goRouterLink = AppRouter.kHomeMinistryView;
    } else if (mail == 'Company@depi.com') {
      goRouterLink = AppRouter.kHomeCompanyView;
    } else {
      goRouterLink = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    AssetsData.logo,
                    width: 100,
                  ),
                  Image.asset(AssetsData.itidaLogo)
                ],
              ),
              const SizedBox(height: 70),
              Text(
                'Welcome to DEPI',
                style: Styles.textStyle32,
              ),
              const SizedBox(height: 20),
              Text(
                'Login',
                style: Styles.textStyle25,
              ),
              const SizedBox(height: 14),
              CustomTextFormField(
                controller: _emailController,
                onChanged: (p0) {
                  setState(() {
                    widget.email = p0;
                  });
                },
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: kGreenColor,
                ),
                labelText: 'Email',
                labelStyle: const TextStyle(
                    color: kGreenColor, fontWeight: FontWeight.w200),
                fillColor: kGrey.shade300,
              ),
              const SizedBox(height: 13),
              CustomTextFormField(
                controller: _passwordController,
                onChanged: (p0) {
                  widget.password = p0;
                },
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: kGreenColor,
                ),
                obscure: true,
                labelText: 'Password',
                labelStyle: const TextStyle(
                    color: kGreenColor, fontWeight: FontWeight.w200),
                fillColor: kGrey.shade300,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      // GoRouter.of(context).push(AppRouter.emailForgetPass);
                    },
                    child: Text(
                      'Forget Password ..?',
                      style: Styles.text18StyleW500
                          .copyWith(color: const Color(0xff555555)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomButton(
                onTap: () {
                  if (widget.email != null &&
                      widget.email.isNotEmpty &&
                      widget.password != null &&
                      widget.password.isNotEmpty) {
                    GoRouter.of(context).push(
                        '${AppRouter.kLoginView}?email=${widget.email}&password=${widget.password}');
                  } else {
                    showSnackBar(context, 'Please complete data');
                  }
                },
                text: 'Login',
                backgroundColor: kGreenAccentColor,
                textStyle: Styles.textStyle25.copyWith(color: Colors.white),
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(15),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t Have an account ?',
                    style: Styles.textStyle14
                        .copyWith(color: const Color(0xff555555)),
                  ),
                  TextButton(
                    style: const ButtonStyle(
                        padding: WidgetStatePropertyAll(EdgeInsets.all(0))),
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.kRegisterOneView);
                    },
                    child: Text('   Register',
                        style: Styles.textStyle14
                            .copyWith(color: const Color(0xff555555))),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
