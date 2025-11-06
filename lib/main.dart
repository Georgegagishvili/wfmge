import 'package:flutter/material.dart';
import 'package:wfmge/src/app.dart';

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
}

Future<void> main() async {
  await _init();
  runApp(const AppRoot());
}
