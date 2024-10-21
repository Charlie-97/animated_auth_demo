import 'package:animated_auth_demo/ui/views/authentication/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:state_extended/state_extended.dart';

class LoginView extends StatefulWidget {
  static const String routeName = '/loginPage';
  const LoginView({super.key});

  @override
  State createState() => _LoginViewState();
}

class _LoginViewState extends AppStateX<LoginView> {
  _LoginViewState._() : super(controller: AuthController()) {
    con = controller as AuthController;
  }

  factory _LoginViewState() => _this ??= _LoginViewState._();

  static _LoginViewState? _this;
  late AuthController con;

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
