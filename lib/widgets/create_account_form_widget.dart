import 'package:flutter/material.dart';
import 'package:login_register_form_ui/helpers/show_snack_bar.dart';
import 'package:login_register_form_ui/utils/validations.dart';
import 'package:login_register_form_ui/widgets/custom_elevated_button_widget.dart';
import 'package:login_register_form_ui/widgets/custom_text_form_field_widget.dart';

class CreateAccountFormWidget extends StatefulWidget {
  const CreateAccountFormWidget({super.key});

  @override
  State<CreateAccountFormWidget> createState() =>
      _CreateAccountFormWidgetState();
}

class _CreateAccountFormWidgetState extends State<CreateAccountFormWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _courseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
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
            labelText: "course",
            hintText: "course name",
            controller: _courseController,
            validator: Validations.validateString,
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
            hintText: "write strong password",
            controller: _passwordController,
            obscureText: true,
            validator: Validations.validatePassword,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormFieldWidget(
            labelText: "confirm password",
            hintText: "write password again",
            controller: _confirmPasswordController,
            obscureText: true,
            validator: (value) {
              return Validations.validateConfirmPassword(
                  value, _passwordController.text);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomElevatedButtonWidget(
            buttonText: "Register",
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pop(context);
                showSnackBar(context, "Create Account Success");
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
