import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hearme/resources/app_font.dart';

class CustomRichText extends StatelessWidget {
  final String firstText;
  final String lastText;
  final VoidCallback onTap;
  const CustomRichText({
    Key? key,
    required this.firstText,
    required this.lastText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$firstText ',
        children: [
          TextSpan(
            text: lastText,
            style: AppFont.greenText,
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
        ],
      ),
    );
  }
}
