import 'dart:async';

import 'package:flutter/material.dart';
import 'package:reddit_api/app.dart';
import 'package:reddit_api/services/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetItService.setup();

  runZonedGuarded(() {
    runApp(const App());
  }, (e, s) async {
    print("UNHANDLED ERROR: $e");
    print("STACKTRACE: $s");
  });
}
