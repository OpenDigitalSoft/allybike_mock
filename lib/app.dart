import 'package:allybike/app/configs/app_routes.dart';
import 'package:allybike/app/ui/activities/home/home_activity.dart';
import 'package:allybike/base/theme/base_color.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Allybike',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.light(
          primary: BaseColor.primaryColor,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.dark(
          background: BaseColor.backgroundColorDark,
          primary: BaseColor.primaryColor,
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      initialRoute: HomeActivity.path,
      getPages: AppRoutes.routes,
    );
  }
}
