
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_studing/app/app_controller.dart';
import 'package:flutter_studing/app/view/auth_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AppController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: AuthenticatorMobile()),
  ];
}
