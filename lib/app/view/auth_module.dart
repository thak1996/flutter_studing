import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_web/app/view/Auth/login/login_page.dart';

class AuthenticatorMobile extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    // ChildRoute(Modular.initialRoute, child: (_, args) => const SplashPage()),
    ChildRoute(Modular.initialRoute, child: (_, args) => const Loginpage()),
  ];
}
