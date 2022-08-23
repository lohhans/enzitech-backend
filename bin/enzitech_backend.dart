import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;

Future<void> main(List<String> arguments) async {
  var pipeline = Pipeline().addMiddleware(log());

  final server = await io.serve(
    pipeline.addHandler(_handler),
    '0.0.0.0',
    4466,
  );

  print('Online - ${server.address.address}:${server.port}');
}

Middleware log() {
  return (handler) {
    return (request) async {
      // Antes de executar
      print('Solicitado: ${request.url}');
      var response = await handler(request);

      // Depois de executar
      print('[${response.statusCode}] - Response');
      return response;
    };
  };
}

FutureOr<Response> _handler(Request request) {
  print(request);
  return Response(200, body: 'ENZITECH API');
}
