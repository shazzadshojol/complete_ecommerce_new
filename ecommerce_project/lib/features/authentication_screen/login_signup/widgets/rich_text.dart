import 'package:ecommerce_project/utils/helpers/helpers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AgreeToTerms extends StatelessWidget {
  const AgreeToTerms({super.key});

  @override
  Widget build(BuildContext context) {
    final customColor = Helpers.isItDark(context);

    return RichText(
      text: TextSpan(
        text: 'I agree to ',
        style: TextStyle(
          color: customColor,
          fontSize: 16,
        ),
        children: [
          TextSpan(
            text: 'terms and conditions',
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                print('Terms and conditions tapped');
              },
          ),
        ],
      ),
    );
  }
}
