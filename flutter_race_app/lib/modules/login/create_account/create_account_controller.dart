import 'package:flutter/widgets.dart';

class CreateAccountController {
  final formKey = GlobalKey<FormState>();
  String _email = "";
  String _password = "";
  String _name = "";
  void onChanged({String? email, String? password, String? name}) {
    _email = email ?? _email;
    _password = password ?? _password;
    _name = name ?? _name;
  }

  bool validate() {
    final form = formKey.currentState!;
    if (form.validate()) {
      form.save();
      return true;
    } else
      return false;
  }
  void create() {
    if (validate()) {

    }
  }
}