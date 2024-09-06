import 'package:flutter/material.dart';
import 'package:login_register_form_ui/utils/app_style.dart';
import 'package:login_register_form_ui/widgets/welcom_action_button_widget.dart';
import 'package:login_register_form_ui/widgets/welcome_widget.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff050522),
      body: SingleChildScrollView(
        child: Column(
          children: [
            WelcomeWidget(),
            SizedBox(
              height: 60,
            ),
            WelcomActionButtonWidget(),
            SizedBox(
              height: 36,
            ),
            Text(
              "All Right Reserved @2021",
              style: AppStyle.styleRegular11,
            )
          ],
        ),
      ),
    );
  }
}
