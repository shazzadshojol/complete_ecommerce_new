import 'dart:convert';
import 'dart:developer';

import 'package:complete_ecommerce/utils/api.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class SignUpController extends GetxController {
  final bool _inProgress = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  bool get inProgress => _inProgress;

  GlobalKey<FormState> get formKey => _formKey;

  TextEditingController get emailController => _emailController;

  TextEditingController get passwordController => _passwordController;

  TextEditingController get nameController => _nameController;

  signup() async {
    log('signup called');

    try {
      Map<String, dynamic> userData = {
        'full_name': _nameController.text,
        'user_email': _emailController.text,
        'user_passwords': _passwordController.text
      };

      var res = await http.post(
        Uri.parse(Api.signupUrl),
        body: userData,
      );

      print(res.statusCode.toString());
      print(res.toString());

      if (res.statusCode == 200) {
        var resBody = jsonDecode(res.body);

        if (resBody['success'] == true) {
          Get.snackbar('Success', 'Signup success');
        } else {
          Get.snackbar('error', 'Error from hare');
        }
      }
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    super.dispose();
  }
}
