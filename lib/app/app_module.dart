import 'package:flutter_web/app/view/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_web/app/app_controller.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AppController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
  ];
}
