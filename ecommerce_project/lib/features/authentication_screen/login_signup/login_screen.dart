import 'package:ecommerce_project/features/authentication_screen/login_signup/signup_screen.dart';
import 'package:ecommerce_project/features/authentication_screen/login_signup/widgets/checkbox.dart';
import 'package:ecommerce_project/features/authentication_screen/login_signup/widgets/main_buttons.dart';
import 'package:ecommerce_project/features/authentication_screen/login_signup/widgets/social_buttons.dart';
import 'package:ecommerce_project/features/authentication_screen/login_signup/widgets/text_fields.dart';
import 'package:ecommerce_project/features/home_screen/bottom_nav_bar.dart';
import 'package:ecommerce_project/utils/constants/app_text.dart';
import 'package:ecommerce_project/utils/constants/images_path.dart';
import 'package:ecommerce_project/utils/helpers/helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../forgot_passwords/forgot_passwords_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final customColor = Helpers.isItDark(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 50),
                Center(
                  child: Image.network(
                    ImagesPath.appLogo,
                    height: 200,
                  ),
                ),
                Text(
                  AppText.loginTextTitle,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: customColor),
                ),
                const SizedBox(height: 10),
                Text(
                  AppText.loginTextSubTitle,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: customColor),
                ),
                const SizedBox(height: 10),
                TextFields(
                  hintText: 'E-mail',
                  controller: _emailController,
                  icon: const Icon(Icons.send),
                ),
                const SizedBox(height: 15),
                TextFields(
                  hintText: 'Passwords',
                  controller: _passwordController,
                  icon: const Icon(Icons.password_outlined),
                  isPassword: true,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const MyCheckBox(
                      text: 'Remember me?',
                    ),
                    _buildForgetText(),
                  ],
                ),
                const SizedBox(height: 20),
                MainButtons(
                  text: 'Sign In',
                  onTap: () {
                    Get.offAll(() => const BottomNavBar());
                  },
                ),
                const SizedBox(height: 20),
                MainButtons(
                  text: 'Create Account',
                  color: Colors.transparent,
                  textColor: customColor,
                  onTap: () => Get.to(() => const SignupScreen()),
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

  TextButton _buildForgetText() {
    return TextButton(
      onPressed: () {
        Get.to(() => const ForgotPasswordsScreen());
      },
      child: const Text(
        'Forgot Passwords?',
        style: TextStyle(
            fontWeight: FontWeight.w600, fontSize: 14, color: Colors.blue),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _emailController.dispose();
  }
}
