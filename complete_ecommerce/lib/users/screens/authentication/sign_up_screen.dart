import 'package:complete_ecommerce/users/common/widgets/text_filds.dart';
import 'package:complete_ecommerce/users/controllers/sign_up_controller.dart';
import 'package:complete_ecommerce/users/screens/authentication/widgets/bottomTextForLoginSignup.dart';
import 'package:complete_ecommerce/users/screens/base_screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final SignUpController _signUpController = Get.find<SignUpController>();

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      child: LayoutBuilder(
        builder: (context, constraints) => ConstrainedBox(
          constraints: BoxConstraints(minHeight: constraints.maxHeight),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    CupertinoIcons.signature,
                    size: 150,
                  ),
                  const Text(
                    'We are happy to have you with us',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Form(
                      key: _signUpController.formKey,
                      child: Column(
                        children: [
                          TextFields(
                            hintText: 'Full Name',
                            icon: const Icon(CupertinoIcons.person),
                            controller: _signUpController.nameController,
                            validator: (value) => value == null || value.isEmpty
                                ? 'Enter full name'
                                : null,
                          ),
                          const SizedBox(height: 15),
                          TextFields(
                            hintText: 'Email',
                            icon: const Icon(CupertinoIcons.mail),
                            controller: _signUpController.emailController,
                            validator: (value) => value == null || value.isEmpty
                                ? 'Enter email'
                                : null,
                          ),
                          const SizedBox(height: 15),
                          TextFields(
                            hintText: 'Passwords',
                            icon: const Icon(CupertinoIcons.lock_slash),
                            controller: _signUpController.passwordController,
                            isPassword: true,
                            validator: (value) => value == null || value.isEmpty
                                ? 'Enter passwords'
                                : null,
                          ),
                          const SizedBox(height: 15),
                          ElevatedButton(
                            onPressed: () {
                              if (_signUpController.formKey.currentState!
                                  .validate()) {
                                print('Form validation successful');
                                _signUpController.signup();
                              } else {
                                Get.snackbar('Error',
                                    'Please fill in all fields correctly');
                              }
                            },
                            child: const Text(
                              'Sign Up',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          BottomTextForLoginSignup(
                            text: 'Have an account?',
                            clickableText: 'Log In!',
                            onTap: () {},
                          ),
                          const Text('Or'),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
