import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdu/core/constants/app_colors.dart';
import 'package:sdu/features/mobile_education/widgets/field_label.dart';
import 'package:sdu/features/mobile_education/widgets/input_field.dart';
import 'package:sdu/features/theme/theme_extensions.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passController = TextEditingController();
  final confirmController = TextEditingController();

  bool obscurePass = true;
  bool obscureConfirm = true;

  final emailFocus = FocusNode();
  final phoneFocus = FocusNode();
  final passFocus = FocusNode();
  final confirmFocus = FocusNode();

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    passController.dispose();
    confirmController.dispose();
    emailFocus.dispose();
    phoneFocus.dispose();
    passFocus.dispose();
    confirmFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.systemWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: IntrinsicHeight(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: AppColors.systemWhite,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.06),
                            blurRadius: 16,
                            offset: const Offset(0, 6),
                          ),
                        ],
                      ),
                      child: IconButton(
                        onPressed: () => Navigator.of(context).maybePop(),
                        icon: const Icon(Icons.arrow_back_ios_new_rounded,
                            size: 20),
                        color: AppColors.systemBlack,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Text('Create Account', style: context.bodyLargeBold),
                  ],
                ),
                const SizedBox(height: 16),
                Text(
                  'Enjoy the various best courses we have, choose the category according to your wishes.',
                  style: context.labelMediumMedium
                      ?.copyWith(color: AppColors.textGrey),
                ),
                const SizedBox(height: 28),
                Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FieldLabel('Email'),
                      InputField(
                        controller: emailController,
                        focusNode: emailFocus,
                        hint: 'Email',
                        prefix: const Icon(Icons.mail_outline_rounded,
                            color: Colors.black54),
                        keyboardType: TextInputType.emailAddress,
                        validator: (v) {
                          if (v == null || v.trim().isEmpty) return 'Required';
                          final email = v.trim();
                          final hasAt = email.contains('@');
                          final hasDot = email.contains('.');
                          if (!hasAt || !hasDot) return 'Invalid email';
                          return null;
                        },
                      ),
                      const SizedBox(height: 22),
                      FieldLabel('Phone Number'),
                      InputField(
                        controller: phoneController,
                        focusNode: phoneFocus,
                        hint: 'Phone Number',
                        prefix: const Icon(Icons.phone_outlined,
                            color: Colors.black38),
                        keyboardType: TextInputType.phone,
                        validator: (v) {
                          if (v == null || v.trim().isEmpty) return 'Required';
                          if (v.trim().length < 7) return 'Invalid phone';
                          return null;
                        },
                      ),
                      const SizedBox(height: 22),
                      FieldLabel('New Password'),
                      InputField(
                        controller: passController,
                        focusNode: passFocus,
                        hint: 'New Password',
                        prefix: const Icon(Icons.lock_outline_rounded,
                            color: Colors.black38),
                        obscureText: obscurePass,
                        suffix: IconButton(
                          onPressed: () =>
                              setState(() => obscurePass = !obscurePass),
                          icon: Icon(
                            obscurePass
                                ? Icons.visibility_off_rounded
                                : Icons.visibility_rounded,
                            color: Colors.black45,
                          ),
                        ),
                        validator: (v) {
                          if (v == null || v.isEmpty) return 'Required';
                          if (v.length < 6) return 'Min 6 characters';
                          return null;
                        },
                      ),
                      const SizedBox(height: 22),
                      FieldLabel('Confirm Password'),
                      InputField(
                        controller: confirmController,
                        focusNode: confirmFocus,
                        hint: 'Confirm Password',
                        prefix: const Icon(Icons.lock_outline_rounded,
                            color: Colors.black38),
                        obscureText: obscureConfirm,
                        suffix: IconButton(
                          onPressed: () =>
                              setState(() => obscureConfirm = !obscureConfirm),
                          icon: Icon(
                            obscureConfirm
                                ? Icons.visibility_off_rounded
                                : Icons.visibility_rounded,
                            color: Colors.black45,
                          ),
                        ),
                        validator: (v) {
                          if (v == null || v.isEmpty) return 'Required';
                          if (v != passController.text)
                            return 'Passwords do not match';
                          return null;
                        },
                      ),
                      const SizedBox(height: 28),
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primaryColor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                          onPressed: () {
                            if (formKey.currentState?.validate() ?? false) {}
                          },
                          child: const Text(
                            'Create Account',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Didn't have an account? ",
                            style: TextStyle(
                              color: AppColors.textGrey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Register',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
