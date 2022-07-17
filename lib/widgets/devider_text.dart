import 'package:flutter/material.dart';

class DividerText extends StatelessWidget {
  final String text;
  const DividerText(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(text),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}
