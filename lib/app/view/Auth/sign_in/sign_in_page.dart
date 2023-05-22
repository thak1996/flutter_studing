import 'dart:developer';

import 'package:flutter_web/app/common/constants/app_colors.dart';
import 'package:flutter_web/app/common/constants/app_text_styles.dart';
import 'package:flutter_web/app/common/widgets/custom_password_form_field.dart';
import 'package:flutter_web/app/common/widgets/custom_text_buttom.dart';
import 'package:flutter_web/app/common/widgets/custom_text_forma_field.dart';
import 'package:flutter_web/app/common/widgets/primary_button.dart';
import 'package:flutter_web/app/common/widgets/top_eclips.dart';
import 'package:flutter_web/app/common/utils/validator.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const TopEclips(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              header(),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      hintText: "email@email.com",
                      labelText: "E-mail",
                      validator: Validator.validateEmail,
                    ),
                    PasswordFormField(
                      controller: _passwordController,
                      labelText: "Senha",
                      hintText: "*****************",
                      helperText:
                          "Sua senha deve conter 8 caracteres, 1 letra maiúscula e 1 número",
                    ),
                  ],
                ),
              ),
              CustomTextButton(
                text: "Recuperar senha",
                onPressed: () => log('Recuperar Senha'),
              ),
              PrimaryButton(
                text: "Entrar",
                onPressed: () {},
              ),
              
            ],
          ),
        ],
      ),
    );
  }

  Padding header() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Text(
        'Estudando Flutter + Firebase',
        style: AppTextStyles.mediumText20.apply(
          color: AppColors.purpleStrong,
        ),
      ),
    );
  }
}
