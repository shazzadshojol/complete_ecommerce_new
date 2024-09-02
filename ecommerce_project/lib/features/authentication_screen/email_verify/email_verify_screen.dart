import 'package:ecommerce_project/features/authentication_screen/email_verify/done_email_verify_screen.dart';
import 'package:ecommerce_project/utils/constants/images_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerifyScreen extends StatefulWidget {
  const EmailVerifyScreen({super.key});

  @override
  State<EmailVerifyScreen> createState() => _EmailVerifyScreenState();
}

class _EmailVerifyScreenState extends State<EmailVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Spacer(),
            Center(
              child: Image.network(
                ImagesPath.emailVerifyImage,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Verify Your Email Please',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            const Text(
              'shazzadshojol@gmail.com',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 10),
            const Text(
                'Click the link sent to your email to verify your email. '
                'If automatically dosen\'t received the email please press '
                'resend button',
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
                    Get.to(() => const DoneEmailVerifyScreen());
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
            Spacer()
          ],
        ),
      ),
    );
  }
}
