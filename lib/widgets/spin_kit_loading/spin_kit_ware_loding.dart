import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hearme/resources/app_color.dart';

class SpinKitWaveLoading extends StatelessWidget {
  const SpinKitWaveLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpinKitWave(
      color: AppColor.green,
      size: 32,
    );
  }
}
