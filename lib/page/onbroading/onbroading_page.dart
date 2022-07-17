import 'package:flutter/material.dart';
import 'package:hearme/bloc/onbroading_bloc.dart';
import 'package:hearme/page/onbroading/widget/current_page_index.dart';
import 'package:hearme/resources/app_strings.dart';
import 'package:hearme/widgets/button/primary_button.dart';

class OnbroadingPage extends StatefulWidget {
  const OnbroadingPage({Key? key}) : super(key: key);

  @override
  State<OnbroadingPage> createState() => _OnbroadingPageState();
}

class _OnbroadingPageState extends State<OnbroadingPage> {
  final _onbroadingBloc = OnbroadingBloc();
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              onPageChanged: _onbroadingBloc.onPageChanged,
              controller: _pageController,
              children: _onbroadingBloc.list,
            ),
          ),
          StreamBuilder<int>(
            stream: _onbroadingBloc.stream,
            initialData: 0,
            builder: (context, snapshot) {
              final currentIndex = snapshot.data!;
              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CurrentPageIndex(index: 0, currentIndex: currentIndex),
                        const SizedBox(width: 6),
                        CurrentPageIndex(index: 1, currentIndex: currentIndex),
                        const SizedBox(width: 6),
                        CurrentPageIndex(index: 2, currentIndex: currentIndex),
                      ],
                    ),
                    const SizedBox(height: 16),
                    PrimaryButton(
                      onPressed: () =>
                          _onbroadingBloc.goNext(_pageController, context),
                      text: _onbroadingBloc.isFinish()
                          ? AppStrings.getStarted
                          : AppStrings.next,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
