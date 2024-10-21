import 'package:animated_auth_demo/ui/views/authentication/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:state_extended/state_extended.dart';

class RegisterView extends StatefulWidget {
  static const String routeName = '/registerPage';
  const RegisterView({super.key});

  @override
  State createState() => _RegisterViewState();
}

class _RegisterViewState extends AppStateX<RegisterView> {
  static _RegisterViewState? _this;
  _RegisterViewState._() : super(controller: AuthController()) {
    con = controller as AuthController;
  }
  factory _RegisterViewState() => _this ??= _RegisterViewState._();
  late AuthController con;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
