import 'package:flutter/material.dart';
import 'package:hearme/resources/app_color.dart';
import 'package:hearme/resources/app_strings.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({
    Key? key,
    required TextEditingController emailController,
  })  : _emailController = emailController,
        super(key: key);

  final TextEditingController _emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      textAlignVertical: TextAlignVertical.center,
      decoration: const InputDecoration(
        prefixIcon: Icon(Icons.email),
        filled: true,
        fillColor: AppColor.lightBlack,
        hintText: AppStrings.email,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColor.lightBlack),
        ),
      ),
      textInputAction: TextInputAction.next,
    );
  }
}
