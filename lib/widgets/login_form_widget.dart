import 'package:flutter/material.dart';
import 'package:login_register_form_ui/helpers/show_snack_bar.dart';
import 'package:login_register_form_ui/utils/app_style.dart';
import 'package:login_register_form_ui/utils/validations.dart';
import 'package:login_register_form_ui/widgets/custom_elevated_button_widget.dart';
import 'package:login_register_form_ui/widgets/custom_text_form_field_widget.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  bool isChecked = false;
  bool isValidateCheckbox = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFormFieldWidget(
            labelText: "username/email",
            hintText: "info@example.com",
            controller: _emailController,
            validator: Validations.validateEmailOrUsername,
            suffixFocusedIcon: const Icon(
              Icons.remove_red_eye_outlined,
              color: Color(0xff050522),
            ),
            suffixIcon: const Icon(
              Icons.remove_red_eye_outlined,
              color: Color(0xffA0936B),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormFieldWidget(
            labelText: "password",
            hintText: "write your password here",
            controller: _passwordController,
            obscureText: true,
            validator: Validations.validatePassword,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              Text(
                'Remember me',
                style: (isValidateCheckbox && !isChecked)
                    ? AppStyle.styleRegular15
                        .copyWith(color: const Color(0xffb42921))
                    : AppStyle.styleRegular15,
              ),
              const Spacer(),
              const Text('Forgot Password ?'),
            ],
          ),
          CustomElevatedButtonWidget(
            buttonText: "Login",
            onPressed: () {
              if (isChecked && _formKey.currentState!.validate()) {
                Navigator.pop(context);
                showSnackBar(context, "Login Success");
              } else {
                isValidateCheckbox = true;
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            borderColor: const Color(0xff050522),
            width: 325,
          ),
        ],
      ),
    );
  }
}
