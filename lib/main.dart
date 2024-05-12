import 'package:flutter/material.dart';

import 'app.dart';
import 'app/di/app_module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppModule().setupDI();
  runApp(const MyApp());
}
