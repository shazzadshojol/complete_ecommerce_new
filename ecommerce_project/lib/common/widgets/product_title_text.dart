import 'package:ecommerce_project/utils/helpers/helpers.dart';
import 'package:flutter/cupertino.dart';

class ProductText extends StatelessWidget {
  const ProductText({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.left,
  });

  final String title;

  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final isSubtitle;
    final color = Helpers.isItDark(context);
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        color: color,
      ),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}
