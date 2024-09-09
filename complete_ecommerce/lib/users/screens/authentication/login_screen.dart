import 'package:complete_ecommerce/users/common/widgets/text_filds.dart';
import 'package:complete_ecommerce/users/screens/authentication/sign_up_screen.dart';
import 'package:complete_ecommerce/users/screens/authentication/widgets/bottomTextForLoginSignup.dart';
import 'package:complete_ecommerce/users/screens/base_screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                    CupertinoIcons.shopping_cart,
                    size: 150,
                  ),
                  const Text(
                    'Welcome Back',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  const SizedBox(height: 20),
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFields(
                            hintText: 'Email',
                            icon: const Icon(CupertinoIcons.mail),
                            controller: _emailController,
                          ),
                          const SizedBox(height: 15),
                          TextFields(
                            hintText: 'Passwords',
                            icon: const Icon(CupertinoIcons.lock_slash),
                            controller: _passwordController,
                            isPassword: true,
                          ),
                          const SizedBox(height: 15),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Login',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          BottomTextForLoginSignup(
                            text: 'Don\'t have an account?',
                            clickableText: 'Sign UP!',
                            onTap: () {
                              Get.to(() => const SignUpScreen());
                            },
                          ),
                          const Text('Or'),
                          BottomTextForLoginSignup(
                            text: 'Are you Admin?',
                            clickableText: 'Click here',
                            onTap: () {},
                          ),
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

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
}
