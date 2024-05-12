import 'package:allybike/app/controllers/home/home_controller.dart';
import 'package:allybike/base/theme/base_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeNavigationBarWidgetV2 extends GetView {
  HomeNavigationBarWidgetV2({super.key});

  final HomeController _homeController = Get.put(
    HomeController(),
  );

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 58,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: BaseColor.primaryColor.withOpacity(0.15),
              blurRadius: 4,
              offset: const Offset(0, -1),
            ),
          ],
        ),
        margin: const EdgeInsets.only(left: 48, top: 8, right: 48, bottom: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                _homeController.updateTab(0);
              },
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _homeController.getCurrentIndex() == 0
                      ? BaseColor.primaryColor
                      : Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.car_rental_outlined,
                    color: _homeController.getCurrentIndex() == 0
                        ? Colors.white
                        : Colors.grey,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _homeController.updateTab(1);
              },
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _homeController.getCurrentIndex() == 1
                      ? BaseColor.primaryColor
                      : Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.map_outlined,
                    color: _homeController.getCurrentIndex() == 1
                        ? Colors.white
                        : Colors.grey,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _homeController.updateTab(2);
              },
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _homeController.getCurrentIndex() == 2
                      ? BaseColor.primaryColor
                      : Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.event_outlined,
                    color: _homeController.getCurrentIndex() == 2
                        ? Colors.white
                        : Colors.grey,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _homeController.updateTab(3);
              },
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _homeController.getCurrentIndex() == 3
                      ? BaseColor.primaryColor
                      : Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.person_3_outlined,
                    color: _homeController.getCurrentIndex() == 3
                        ? Colors.white
                        : Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
