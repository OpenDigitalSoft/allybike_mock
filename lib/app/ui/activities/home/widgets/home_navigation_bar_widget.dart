import 'package:allybike/app/controllers/home/home_controller.dart';
import 'package:allybike/base/theme/base_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeNavigationBarWidget extends GetView {
  HomeNavigationBarWidget({super.key});

  final HomeController _homeController = Get.put(
    HomeController(),
  );

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
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
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  color: _homeController.getCurrentIndex() == 0
                      ? BaseColor.primaryColor
                      : Colors.white,
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
              label: 'Services',
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  color: _homeController.getCurrentIndex() == 1
                      ? BaseColor.primaryColor
                      : Colors.white,
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
              label: 'Routes',
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  color: _homeController.getCurrentIndex() == 2
                      ? BaseColor.primaryColor
                      : Colors.white,
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
              label: 'Events',
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                  color: _homeController.getCurrentIndex() == 3
                      ? BaseColor.primaryColor
                      : Colors.white,
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
              label: 'Profile',
            ),
          ],
          currentIndex: _homeController.getCurrentIndex(),
          unselectedItemColor: Colors.grey,
          selectedItemColor: BaseColor.primaryColor,
          selectedIconTheme: const IconThemeData(size: 28.0),
          unselectedLabelStyle: const TextStyle(
            fontFamily: 'Poppins',
          ),
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
          ),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.shifting,
          onTap: (position) {
            _homeController.updateTab(position);
          },
        ),
      ),
    );
  }
}
