import 'package:allybike/app/controllers/route/route_controller.dart';
import 'package:allybike/app/ui/activities/route/detail_route_activity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteActivity extends GetView {
  final RouteController _routeController = Get.put(
    RouteController(
      Get.find(),
    ),
  );

  RouteActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        int.parse('FFF7F7F7', radix: 16),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.height / 1.6,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/background_route.jpg',
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                    top: 100,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Disfruta de las mejores rutas,',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const Text(
                        'Routes close to you',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Expanded(
                        child: Obx(
                          () => ListView.builder(
                            itemCount: _routeController.routes.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              var route = _routeController.routes[index];
                              return GestureDetector(
                                onTap: () {
                                  Get.toNamed(
                                    DetailRouteActivity.path,
                                    arguments: {
                                      'route': route,
                                    },
                                  );
                                },
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      right: 16, bottom: 38),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Colors.white),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          route.difficulty,
                                          style: const TextStyle(
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                        Text(
                                          route.name,
                                          style: const TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Image.asset(
                                          'assets/images/map_image_test.png',
                                          height: 120,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '${route.distance}km',
                                              style: const TextStyle(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 42,
                                            ),
                                            const Text(
                                              'Aprox. 1h30min',
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Browse by Activity',
              style: TextStyle(
                fontFamily: 'Poppings',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      const EdgeInsets.only(left: 12, right: 12, bottom: 100),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0.1,
                        blurRadius: 0.1,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/mtb.jpg',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Text(
                        'Montaña',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
