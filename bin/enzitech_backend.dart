import 'dart:async';
import 'package:enzitech_backend/enzitech_backend.dart';
import 'package:shelf/shelf_io.dart' as io;

Future<void> main(List<String> arguments) async {
  final handler = await startShelfModular();
  final server = await io.serve(
    handler,
    '0.0.0.0',
    4466,
  );

  print('Server Online - ${server.address.address}:${server.port}');
}
