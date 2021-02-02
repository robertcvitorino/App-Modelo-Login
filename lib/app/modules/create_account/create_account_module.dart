import 'create_account_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'create_account_page.dart';

class CreateAccountModule extends ChildModule {
  @override
  List<Bind> get binds => [Bind((i) => CreateAccountController())];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute,
            child: (_, args) => CreateAccountPage()),
      ];

  static Inject get to => Inject<CreateAccountModule>.of();
}
