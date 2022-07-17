import 'package:flutter/material.dart';
import 'package:hearme/resources/app_font.dart';
import 'package:hearme/resources/app_strings.dart';
import 'package:hearme/resources/assets_manager.dart';
import 'package:hearme/widgets/button/primary_button.dart';
import 'package:hearme/widgets/button/secondary_button.dart';
import 'package:hearme/widgets/custom_rich_text.dart';
import 'package:hearme/widgets/devider_text.dart';
import 'package:hearme/widgets/text_form_field/email_text_form_field.dart';
import 'package:hearme/widgets/text_form_field/password_text_form_field.dart';

class LoginGooglePage extends StatefulWidget {
  const LoginGooglePage({Key? key}) : super(key: key);

  @override
  State<LoginGooglePage> createState() => _LoginGogolePageState();
}

class _LoginGogolePageState extends State<LoginGooglePage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.asset(ImageAssets.signupImage, width: 150),
            const SizedBox(height: 50),
            const Text(AppStrings.loginToYourAccount,
                style: AppFont.whiteHeadline),
            const SizedBox(height: 50),
            _buildForm(),
            const SizedBox(height: 40),
            PrimaryButton(text: AppStrings.signin, onPressed: () {}),
            const SizedBox(height: 40),
            const DividerText(AppStrings.orContinueWith),
            const SizedBox(height: 40),
            _loginButtons(),
            const SizedBox(height: 40),
            CustomRichText(
              firstText: AppStrings.alreadyHaveAccount,
              lastText: AppStrings.signUp,
              onTap: () => Navigator.of(context).pop(),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Row _loginButtons() {
    return Row(
      children: [
        const Spacer(),
        Expanded(
          flex: 3,
          child: SecondaryButton(
            onPressed: () {},
            text: AppStrings.empty,
            iconPath: IconAssets.facebook,
          ),
        ),
        const Spacer(),
        Expanded(
          flex: 3,
          child: SecondaryButton(
            onPressed: () {},
            text: AppStrings.empty,
            iconPath: IconAssets.google,
          ),
        ),
        const Spacer(),
        Expanded(
          flex: 3,
          child: SecondaryButton(
            onPressed: () {},
            text: AppStrings.empty,
            iconPath: IconAssets.apple,
          ),
        ),
        const Spacer(),
      ],
    );
  }

  Form _buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          EmailTextFormField(emailController: _emailController),
          const SizedBox(height: 16),
          PasswordTextFormField(
            passwordController: _passwordController,
            onFieldSubmitted: (_) {},
          ),
        ],
      ),
    );
  }
}
