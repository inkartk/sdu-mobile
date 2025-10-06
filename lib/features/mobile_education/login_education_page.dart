import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sdu/core/constants/app_colors.dart';
import 'package:sdu/core/router.gr.dart';
import 'package:sdu/features/mobile_education/widgets/field_label.dart';
import 'package:sdu/features/mobile_education/widgets/input_field.dart';

@RoutePage()
class LoginEducationPage extends StatefulWidget {
  const LoginEducationPage({super.key});

  @override
  State<LoginEducationPage> createState() => _LoginEducationPageState();
}

class _LoginEducationPageState extends State<LoginEducationPage> {
  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passController = TextEditingController();

  final emailFocus = FocusNode();
  final passFocus = FocusNode();

  bool obscurePass = true;

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    emailFocus.dispose();
    passFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final titleStyle = TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w800,
      color: AppColors.systemBlack,
      height: 1.2,
    );

    final subtitleStyle = TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: AppColors.textGrey,
      height: 1.45,
    );

    return Scaffold(
      backgroundColor: AppColors.systemWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Login', style: titleStyle),
              const SizedBox(height: 10),
              Text('Hello, Welcome back to My Courses', style: subtitleStyle),
              const SizedBox(height: 28),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                          prefix: Icon(
                            Icons.mail_outline_rounded,
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (v) {
                            if (v == null || v.trim().isEmpty)
                              return 'Required';
                            final email = v.trim();
                            final emailReg =
                                RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
                            if (!emailReg.hasMatch(email))
                              return 'Invalid email';
                            return null;
                          },
                        ),
                        const SizedBox(height: 22),
                        FieldLabel('Password'),
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
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        context.pushRoute(ResetPasswordRoute());
                      },
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: AppColors.textGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
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
                        if (formKey.currentState?.validate() ?? false) {
                          // submit
                        }
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(
                          color: AppColors.textGrey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            color: AppColors.primaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
