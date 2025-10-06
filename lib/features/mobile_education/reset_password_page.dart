import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdu/core/constants/app_colors.dart';
import 'package:sdu/features/mobile_education/widgets/field_label.dart';
import 'package:sdu/features/mobile_education/widgets/input_field.dart';

@RoutePage()
class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final emailFocus = FocusNode();

  @override
  void dispose() {
    emailController.dispose();
    emailFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final titleStyle = const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w800,
      color: Colors.black,
      height: 1.2,
    );

    return Scaffold(
      backgroundColor: AppColors.systemWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.systemWhite,
        leading: IconButton(
          onPressed: () => context.router.maybePop(),
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
        ),
        title: Text('Reset Password', style: titleStyle),
        centerTitle: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                const FieldLabel('Email'),
                InputField(
                  controller: emailController,
                  focusNode: emailFocus,
                  hint: 'Enter your email',
                  prefix: Icon(Icons.mail_outline_rounded,
                      color: AppColors.primaryColor),
                  keyboardType: TextInputType.emailAddress,
                  validator: (v) {
                    if (v == null || v.trim().isEmpty) return 'Required';
                    final email = v.trim();
                    final emailReg = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
                    if (!emailReg.hasMatch(email)) return 'Invalid email';
                    return null;
                  },
                ),
                const SizedBox(height: 28),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF2C350),
                      foregroundColor: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      final isValid = formKey.currentState?.validate() ?? false;
                      if (!isValid) return;
                      final email = emailController.text.trim();
                      // TODO: вызвать восстановление пароля через репозиторий/Bloc
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                            content: Text(
                                'If $email exists, we\'ll send a new password.')),
                      );
                    },
                    child: const Text(
                      'Send Me a New Password',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
