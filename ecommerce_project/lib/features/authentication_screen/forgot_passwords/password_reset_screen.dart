import 'package:ecommerce_project/features/authentication_screen/login_signup/login_screen.dart';
import 'package:ecommerce_project/utils/constants/images_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordResetEmailSent extends StatefulWidget {
  const PasswordResetEmailSent({super.key});

  @override
  State<PasswordResetEmailSent> createState() => _PasswordResetEmailSentState();
}

class _PasswordResetEmailSentState extends State<PasswordResetEmailSent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const Spacer(),
            Center(
              child: Image.network(
                ImagesPath.emailVerifyImage,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Email Sent Successfully',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            const Text(
              'shazzadshojol@gmail.com',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
                'Thanks for creating your account. '
                'Now you have the opportunity to visit and order '
                'as you want. We are happy you selected us. '
                'You will find all your desired products hare.',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey),
                textAlign: TextAlign.center),
            const SizedBox(height: 20),
            SizedBox(
              width: double.maxFinite,
              height: 50,
              child: ElevatedButton(
                  onPressed: () {
                    Get.offAll(() => const LoginScreen());
                  },
                  child: const Text('Continue')),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text(
                'Resend Email',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue),
              ),
            ),
            const Spacer()
          ],
        ),
      ),
    );
  }
}
