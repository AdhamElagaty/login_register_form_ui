import 'package:flutter/material.dart';
import 'package:login_register_form_ui/widgets/bottom_sheet_footer_widget.dart';
import 'package:login_register_form_ui/widgets/bottom_sheet_header_widget.dart';
import 'package:login_register_form_ui/widgets/create_account_form_widget.dart';

class CreateAccountBottomSheetBodyWidget extends StatelessWidget {
  const CreateAccountBottomSheetBodyWidget({super.key});

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
              massegeTitle: "Hello...",
              nameSubTitle: "Register",
            ),
            const SizedBox(
              height: 25,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: CreateAccountFormWidget(),
            ),
            const SizedBox(
              height: 10,
            ),
            BottomSheetFooterWidget(
              messageText: "Already have account? ",
              actionText: "Login",
              onTap: () {},
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
