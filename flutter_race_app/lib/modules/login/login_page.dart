import 'package:flutter/material.dart';
import 'package:flutter_race_app/modules/login/login_controller.dart';
import 'package:flutter_race_app/shared/theme/app_theme.dart';
import 'package:flutter_race_app/shared/widgets/button/button.dart';
import 'package:flutter_race_app/shared/widgets/input_text/input_text.dart';
import 'package:validators/validators.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppTheme.colors.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 200,
                ),
                InputText(
                  label: "E-mail",
                  hint: "Digite seu e-mail",
                  validator: (value) =>
                      isEmail(value) ? null : "Digite um e-mail válido",
                  onChanged: (value) => controller.onChanged(email: value),
                ),
                SizedBox(
                  height: 12,
                ),
                InputText(
                  label: "Senha",
                  hint: "Digite sua senha",
                  validator: (value) => value.length >= 6 ? null : "Digite uma senha mais forte",
                  obscure: true,
                  onChanged: (value) => controller.onChanged(password: value),
                ),
                SizedBox(
                  height: 14,
                ),
                Button(
                  label: "Entrar",
                  onTap: () {
                    controller.login();
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                Button(
                  label: "Criar conta",
                  type: ButtonType.outline,
                  onTap: () {
                    Navigator.pushNamed(context, "/login/create-account");
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
