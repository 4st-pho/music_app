import 'package:flutter/material.dart';
import 'package:hearme/resources/assets_manager.dart';
import 'package:hearme/resources/app_font.dart';
import 'package:hearme/resources/app_strings.dart';
import 'package:hearme/resources/route_manager.dart';
import 'package:hearme/widgets/spin_kit_loading/spin_kit_ware_loding.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void goPage(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushNamed(Routes.onBoardingRoute);
  }

  @override
  void initState() {
    super.initState();
    goPage(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(flex: 2),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(ImageAssets.splashLogo, height: 50),
              const SizedBox(width: 20),
              const Text(
                AppStrings.appName,
                style: AppFont.whiteHeadlineB,
              )
            ],
          ),
          const Spacer(flex: 2),
          const SpinKitWaveLoading(),
          const Spacer(),
        ],
      ),
    );
  }
}
