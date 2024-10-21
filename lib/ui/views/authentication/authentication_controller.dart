import 'package:animated_auth_demo/ui/views/authentication/authentication_model.dart';
import 'package:state_extended/state_extended.dart';

class AuthenticationController extends StateXController {
  AuthenticationController._() : model = AuthenticationModel();
  static final _instance = AuthenticationController._();
  factory AuthenticationController() => _instance;

  final AuthenticationModel model;
}
