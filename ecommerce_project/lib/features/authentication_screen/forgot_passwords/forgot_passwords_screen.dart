import 'package:ecommerce_project/features/authentication_screen/forgot_passwords/password_reset_screen.dart';
import 'package:ecommerce_project/features/authentication_screen/login_signup/widgets/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordsScreen extends StatefulWidget {
  const ForgotPasswordsScreen({super.key});

  @override
  State<ForgotPasswordsScreen> createState() => _ForgotPasswordsScreenState();
}

class _ForgotPasswordsScreenState extends State<ForgotPasswordsScreen> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const Spacer(),
            const Text(
              'Forgot password',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            const Text(
                'Don\'t worry we will help you to recover your passwords.'
                'please provide your email address. '
                'An email will be sent for verification',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
                textAlign: TextAlign.center),
            const SizedBox(height: 20),
            TextFields(
              icon: const Icon(Icons.email),
              hintText: 'Your Email',
              controller: _emailController,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.maxFinite,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(() => const PasswordResetEmailSent());
                  },
                  child: const Text('Continue')),
            ),
            const SizedBox(height: 20),
            const Spacer()
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }
}
