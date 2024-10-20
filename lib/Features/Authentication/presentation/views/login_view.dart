import 'package:depi_hapd/Features/Authentication/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key, required this.email, required this.password});
final String email;
 final String password;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: LoginViewBody(email: email, password: password,),
      ),
    );
  }
}
