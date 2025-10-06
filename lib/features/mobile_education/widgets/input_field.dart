import 'package:flutter/material.dart';
import 'package:sdu/core/constants/app_colors.dart';

class InputField extends StatefulWidget {
  const InputField({
    super.key,
    required this.controller,
    required this.hint,
    this.prefix,
    this.suffix,
    this.obscureText = false,
    this.validator,
    this.keyboardType,
    this.focusNode,
  });

  final TextEditingController controller;
  final String hint;
  final Widget? prefix;
  final Widget? suffix;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final FocusNode? focusNode;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool get isFocused => widget.focusNode?.hasFocus ?? false;

  @override
  void initState() {
    super.initState();
    widget.focusNode?.addListener(_onFocus);
  }

  @override
  void dispose() {
    widget.focusNode?.removeListener(_onFocus);
    super.dispose();
  }

  void _onFocus() {
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(
        color: Colors.black12,
        width: 1,
      ),
    );

    final focusedBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(
        color: AppColors.primaryColor,
        width: 2,
      ),
    );

    return TextFormField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      keyboardType: widget.keyboardType,
      obscureText: widget.obscureText,
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.hint,
        filled: true,
        fillColor: AppColors.systemWhite,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        prefixIcon: widget.prefix == null
            ? null
            : Padding(
                padding: const EdgeInsets.only(left: 14, right: 10),
                child: widget.prefix,
              ),
        prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),
        suffixIcon: widget.suffix,
        enabledBorder: baseBorder,
        focusedBorder: focusedBorder,
        errorBorder: baseBorder.copyWith(
          borderSide: const BorderSide(color: Colors.redAccent),
        ),
        focusedErrorBorder: focusedBorder.copyWith(
          borderSide: const BorderSide(color: Colors.redAccent, width: 2),
        ),
      ),
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    );
  }
}
