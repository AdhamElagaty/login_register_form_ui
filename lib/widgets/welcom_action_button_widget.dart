import 'package:flutter/material.dart';
import 'package:login_register_form_ui/helpers/view_bottom_sheet.dart';
import 'package:login_register_form_ui/widgets/create_account_bottom_sheet_body_widget.dart';
import 'package:login_register_form_ui/widgets/custom_elevated_button_widget.dart';

class WelcomActionButtonWidget extends StatelessWidget {
  const WelcomActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButtonWidget(
          buttonText: "Create Account",
          onPressed: () {
            viewBottomSheet(
                context, const CreateAccountBottomSheetBodyWidget());
          },
          backgroundColor: const Color(0xffFFDE69),
          textColor: const Color(0xff1B1A40),
        ),
        const SizedBox(
          height: 15,
        ),
        CustomElevatedButtonWidget(
          buttonText: "Login",
          onPressed: () {},
        )
      ],
    );
  }
}
