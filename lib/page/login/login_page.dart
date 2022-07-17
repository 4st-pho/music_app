import 'package:flutter/material.dart';
import 'package:hearme/resources/assets_manager.dart';
import 'package:hearme/resources/app_font.dart';
import 'package:hearme/resources/route_manager.dart';
import 'package:hearme/resources/app_strings.dart';
import 'package:hearme/widgets/button/primary_button.dart';
import 'package:hearme/widgets/button/secondary_button.dart';
import 'package:hearme/widgets/custom_rich_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Image.asset(ImageAssets.loginImage, width: 150),
            const SizedBox(height: 50),
            const Text(AppStrings.letYouIn, style: AppFont.whiteHeadlineB),
            const SizedBox(height: 50),
            SecondaryButton(
              onPressed: () {},
              text: AppStrings.ctnWithfb,
              iconPath: IconAssets.facebook,
            ),
            const SizedBox(height: 16),
            SecondaryButton(
              onPressed: () {},
              text: AppStrings.ctnWithGg,
              iconPath: IconAssets.google,
            ),
            const SizedBox(height: 16),
            SecondaryButton(
              onPressed: () {},
              text: AppStrings.ctnWithApple,
              iconPath: IconAssets.apple,
            ),
            const SizedBox(height: 40),
            Row(
              children: const [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(AppStrings.or),
                ),
                Expanded(child: Divider()),
              ],
            ),
            const SizedBox(height: 40),
            PrimaryButton(
              onPressed: () {},
              text: AppStrings.signInWithPassword,
            ),
            const SizedBox(height: 20),
            CustomRichText(
              firstText: AppStrings.dontHaveAccount,
              lastText: AppStrings.signUp,
              onTap: () => Navigator.of(context).pushNamed(Routes.signupRoute),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
