import 'package:flutter/material.dart';
import 'package:flutter_race_app/modules/login/create_account/create_account_controller.dart';
import 'package:flutter_race_app/shared/theme/app_theme.dart';
import 'package:flutter_race_app/shared/widgets/button/button.dart';
import 'package:flutter_race_app/shared/widgets/input_text/input_text.dart';
import 'package:validators/validators.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final controller = CreateAccountController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppTheme.colors.background,
          elevation: 0,
          leading: BackButton(
            color: AppTheme.colors.backButton,
          ),
        ),
        backgroundColor: AppTheme.colors.background,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Criando uma conta",
                  style: AppTheme.textStyles.title,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Mantenha seus gastos em dia",
                  style: AppTheme.textStyles.subtitle,
                ),
                SizedBox(
                  height: 38,
                ),
                InputText(
                  label: "Nome",
                  hint: "Digite seu nome completo",
                  validator: (value) => value.isNotEmpty ? null : "Digite seu nome",
                  onChanged: (value) => controller.onChanged(name: value),
                ),
                SizedBox(
                  height: 12,
                ),
                InputText(
                  label: "E-mail",
                  hint: "Digite seu e-mail",
                  validator: (value) =>
                      isEmail(value) ? null : "Digite um email válido",
                  onChanged: (value) => controller.onChanged(email: value),
                ),
                SizedBox(
                  height: 12,
                ),
                InputText(
                  label: "Senha",
                  hint: "Digite sua senha",
                  validator: (value) => value.length >= 6 ? null : "Digite uma senha válida",
                  obscure: true,
                  onChanged: (value) => controller.onChanged(password: value),
                ),
                SizedBox(
                  height: 14,
                ),
                Button(
                  label: "Criar conta",
                  onTap: () {
                    controller.create();
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
