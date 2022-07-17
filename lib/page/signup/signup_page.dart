import 'package:flutter/material.dart';
import 'package:hearme/resources/app_font.dart';
import 'package:hearme/resources/app_strings.dart';
import 'package:hearme/resources/assets_manager.dart';
import 'package:hearme/resources/route_manager.dart';
import 'package:hearme/widgets/button/primary_button.dart';
import 'package:hearme/widgets/button/secondary_button.dart';
import 'package:hearme/widgets/custom_rich_text.dart';
import 'package:hearme/widgets/devider_text.dart';
import 'package:hearme/widgets/text_form_field/email_text_form_field.dart';
import 'package:hearme/widgets/text_form_field/password_text_form_field.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
            const Text(AppStrings.createYourAccount,
                style: AppFont.whiteHeadline),
            const SizedBox(height: 50),
            _buildForm(),
            const SizedBox(height: 40),
            PrimaryButton(onPressed: () {}, text: AppStrings.signUp),
            const SizedBox(height: 40),
            const DividerText(AppStrings.orContinueWith),
            const SizedBox(height: 40),
            _loginButtons(),
            const SizedBox(height: 40),
            CustomRichText(
              firstText: AppStrings.alreadyHaveAccount,
              lastText: AppStrings.signin,
              onTap: () =>
                  Navigator.of(context).pushNamed(Routes.loginGoogleRoute),
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
