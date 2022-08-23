import 'package:shelf/shelf.dart';
import 'package:shelf_modular/shelf_modular.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        Route.get(
          '/',
          (Request request) => Response.ok('Inicial'),
        ),
        Route.get(
          '/login',
          (Request request) => Response.ok('Rota de Login'),
        ),
        Route.get(
          '/enzyms',
          (Request request) => Response.ok('Rota de Enzimas'),
        ),
      ];
}
