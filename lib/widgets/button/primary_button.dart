import 'package:flutter/material.dart';
import 'package:hearme/resources/app_color.dart';
import 'package:hearme/resources/app_font.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const PrimaryButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: AppColor.dartGreen,
          elevation: 0,
          onPrimary: AppColor.white,
          minimumSize: const Size(double.infinity, 53),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(36))),
      onPressed: onPressed,
      child: Text(text, style: AppFont.whiteText),
    );
  }
}
