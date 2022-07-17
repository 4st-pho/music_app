import 'package:flutter/material.dart';
import 'package:hearme/resources/app_color.dart';

class CurrentPageIndex extends StatelessWidget {
  final int index;
  final int currentIndex;
  const CurrentPageIndex(
      {Key? key, required this.index, required this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSelect = index == currentIndex;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isSelect ? 30 : 10,
      height: 10,
      decoration: BoxDecoration(
          color: isSelect ? AppColor.green : AppColor.grey,
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
