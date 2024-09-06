import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.controller,
    this.obscureText,
    this.validator,
    this.suffixFocusedIcon,
    this.suffixIcon,
    this.textInputType,
    this.onChanged,
  });

  final TextEditingController? controller;
  final bool? obscureText;
  final String hintText;
  final String? Function(String?)? validator;
  final Widget? suffixFocusedIcon;
  final Widget? suffixIcon;
  final TextInputType? textInputType;
  final void Function(String)? onChanged;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool? _currentObscureText;
  final FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _currentObscureText = widget.obscureText;
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: _currentObscureText ?? false,
      focusNode: _focusNode,
      keyboardType: widget.textInputType,
      onChanged: widget.onChanged,
      maxLength: widget.textInputType == TextInputType.phone ? 11 : null,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        errorBorder: const OutlineInputBorder(),
        hintText: widget.hintText,
        label: Text(widget.hintText),
        errorMaxLines: 3,
        counterText: '',
        suffixIcon: _isFocused
            ? (widget.obscureText != null
                ? IconButton(
                    icon: Icon(_currentObscureText!
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      setState(() {
                        _currentObscureText = !_currentObscureText!;
                      });
                    })
                : widget.suffixFocusedIcon)
            : widget.suffixIcon,
      ),
    );
  }
}
