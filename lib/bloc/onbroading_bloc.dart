import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:hearme/page/onbroading/widget/onbroading_item.dart';
import 'package:hearme/resources/assets_manager.dart';
import 'package:hearme/resources/route_manager.dart';
import 'package:hearme/resources/app_strings.dart';

class OnbroadingBloc {
  int _currentIndex = 0;
  final List<OnbroadingItem> list = const [
    OnbroadingItem(
        imagePath: ImageAssets.onbroading1, content: AppStrings.onbroading1),
    OnbroadingItem(
        imagePath: ImageAssets.onbroading2, content: AppStrings.onbroading2),
    OnbroadingItem(
        imagePath: ImageAssets.onbroading3, content: AppStrings.onbroading3),
  ];

  final _controller = StreamController<int>();
  Stream<int> get stream => _controller.stream;

  bool isFinish() => _currentIndex >= list.length - 1;

  void onPageChanged(int value) {
    _currentIndex = value;
    _controller.sink.add(_currentIndex);
  }

  void goNext(PageController pageController, BuildContext context) {
    int nextIndex = _currentIndex + 1;
    if (nextIndex >= list.length) {
      Navigator.of(context).pushNamed(Routes.loginRoute);
      return;
    }
    _currentIndex++;
    pageController.animateToPage(_currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastOutSlowIn);
    _controller.sink.add(_currentIndex);
  }

  OnbroadingBloc() {
    _controller.sink.add(0);
  }

  void dispose() {
    _controller.close();
  }
}
