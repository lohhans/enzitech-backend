import 'dart:async';

import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;

Future<void> main(List<String> arguments) async {
  final server = await io.serve(
    _handler,
    '0.0.0.0',
    4466,
  );

  print('Online - ${server.address.address}:${server.port}');
}

FutureOr<Response> _handler(Request request) {
  print(request);
  return Response(200, body: 'ENZITECH API');
}
