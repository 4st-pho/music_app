import 'package:flutter/material.dart';
import 'package:hearme/resources/app_color.dart';
import 'package:hearme/resources/app_font.dart';

class OnbroadingItem extends StatelessWidget {
  final String imagePath;
  final String content;
  const OnbroadingItem(
      {Key? key, required this.imagePath, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 0,
                bottom: -2,
                right: 0,
                child: Container(
                  height: 36,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(36),
                      topRight: Radius.circular(36),
                    ),
                    color: AppColor.background,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    content,
                    style: AppFont.greenHeadline,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
