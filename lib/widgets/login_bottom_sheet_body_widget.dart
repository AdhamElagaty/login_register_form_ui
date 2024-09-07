import 'package:flutter/material.dart';
import 'package:login_register_form_ui/helpers/view_bottom_sheet.dart';
import 'package:login_register_form_ui/widgets/bottom_sheet_footer_widget.dart';
import 'package:login_register_form_ui/widgets/bottom_sheet_header_widget.dart';
import 'package:login_register_form_ui/widgets/create_account_bottom_sheet_body_widget.dart';
import 'package:login_register_form_ui/widgets/login_form_widget.dart';

class LoginBottomSheetBodyWidget extends StatelessWidget {
  const LoginBottomSheetBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const BottomSheetHeaderWidget(
              massegeTitle: "Welcome Back!!!",
              nameSubTitle: "Login",
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: LoginFormWidget(),
            ),
            const SizedBox(
              height: 10,
            ),
            BottomSheetFooterWidget(
              messageText: "Don`t have an account? ",
              actionText: "Register",
              onTap: () {
                Navigator.pop(context);
                viewBottomSheet(
                    context, const CreateAccountBottomSheetBodyWidget());
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
