import 'package:ecommerce_project/features/authentication_screen/login_signup/widgets/checkbox.dart';
import 'package:ecommerce_project/features/authentication_screen/login_signup/widgets/main_buttons.dart';
import 'package:ecommerce_project/features/authentication_screen/login_signup/widgets/rich_text.dart';
import 'package:ecommerce_project/features/authentication_screen/login_signup/widgets/social_buttons.dart';
import 'package:ecommerce_project/features/authentication_screen/login_signup/widgets/text_fields.dart';
import 'package:ecommerce_project/utils/constants/app_text.dart';
import 'package:ecommerce_project/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../email_verify/email_verify_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final customColor = Helpers.isItDark(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 50),
                Text(
                  AppText.signUpText,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      color: customColor),
                ),
                const SizedBox(height: 10),
                Wrap(
                  children: [
                    SizedBox(
                      width: 160,
                      child: TextFields(
                        hintText: 'First Name',
                        controller: _firstNameController,
                        icon: const Icon(Icons.person),
                      ),
                    ),
                    const SizedBox(width: 25),
                    SizedBox(
                      width: 160,
                      child: TextFields(
                        hintText: 'Last Name',
                        controller: _lastNameController,
                        icon: const Icon(Icons.person),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                TextFields(
                  hintText: 'Username',
                  controller: _userNameController,
                  icon: const Icon(Icons.account_circle_outlined),
                ),
                const SizedBox(height: 10),
                TextFields(
                  hintText: 'E-mail',
                  controller: _emailController,
                  icon: const Icon(Icons.send),
                ),
                const SizedBox(height: 15),
                TextFields(
                  hintText: 'Phone',
                  controller: _phoneController,
                  icon: const Icon(Icons.phone),
                ),
                const SizedBox(height: 15),
                TextFields(
                  hintText: 'Passwords',
                  controller: _passwordController,
                  icon: const Icon(Icons.password_outlined),
                  isPassword: true,
                ),
                const SizedBox(height: 10),
                const Row(
                  children: [MyCheckBox(), AgreeToTerms()],
                ),
                const SizedBox(height: 20),
                MainButtons(
                  text: 'Create Account',
                  onTap: () {
                    Get.to(() => const EmailVerifyScreen());
                  },
                ),
                const SizedBox(height: 20),
                const Text(
                  'Or Sign in with',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 20),
                const SocialButtons()
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _firstNameController.dispose();
    _lastNameController.dispose();
    _phoneController.dispose();
    _userNameController.dispose();
  }
}
