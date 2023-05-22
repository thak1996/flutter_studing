import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_web/app/view/auth/sign_in/sign_in_controller.dart';
import 'package:flutter_web/app/view/auth/sign_in/sign_in_page.dart';

class AuthenticatorMobile extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SignInController()),
  ];

  @override
  final List<ModularRoute> routes = [
    // ChildRoute(Modular.initialRoute, child: (_, args) => const SplashPage()),
    ChildRoute(Modular.initialRoute, child: (_, args) => const SignInPage()),
  ];
}
