import 'package:flutter/material.dart';
import 'package:hearme/resources/app_color.dart';
import 'package:hearme/resources/app_font.dart';

class SecondaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final String iconPath;
  const SecondaryButton({
    Key? key,
    required this.onPressed,
    this.iconPath = '',
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: AppColor.lightBlack,
          elevation: 0,
          onPrimary: AppColor.white,
          minimumSize: const Size(double.infinity, 53),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: const BorderSide(
                color: AppColor.grey,
                width: 1,
              ))),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (iconPath.isNotEmpty) Image.asset(iconPath, height: 22),
          if (iconPath.isNotEmpty) const SizedBox(width: 6),
          if (text.isNotEmpty) Text(text, style: AppFont.whiteText),
        ],
      ),
    );
  }
}
