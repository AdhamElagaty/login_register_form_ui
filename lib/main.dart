import 'package:flutter/material.dart';
import 'package:login_register_form_ui/views/welcome_view.dart';

void main() {
  runApp(const LoginRegisterFormUI());
}

class LoginRegisterFormUI extends StatelessWidget {
  const LoginRegisterFormUI({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeView(),
    );
  }
}
