import 'package:allybike/app/controllers/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/home_navigation_bar_widget_v2.dart';

class HomeActivity extends GetView<HomeController> {
  static const path = '/home';

  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Stack(
          children: [
            IndexedStack(
              index: controller.getCurrentIndex(),
              children: controller.pages,
            ),
            Positioned(
              width: context.width,
              bottom: 0,
              child: HomeNavigationBarWidgetV2(),
            )
          ],
        ),
      ),
    );
  }
}
