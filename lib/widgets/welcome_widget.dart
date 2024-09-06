import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_register_form_ui/utils/app_style.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: SvgPicture.asset(
          "assets/images/logo_picture.svg",
          width: 400.0,
        ),
      ),
      const SizedBox(
        height: 15,
      ),
      const Text(
        "Welcome",
        style: AppStyle.styleRegular36,
      ),
      const SizedBox(
        height: 15,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
          style: AppStyle.styleLight20,
          textAlign: TextAlign.center,
        ),
      ),
    ]);
  }
}
