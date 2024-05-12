import 'package:allybike/base/theme/base_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/route/route_detail_controller.dart';

class DetailRouteActivity extends GetView<RouteDetailController> {
  static const path = "/detail-route";
  const DetailRouteActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: context.height / 2.5,
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/background_route.jpg',
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 70,
                  left: 12,
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_outlined,
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 12,
                      bottom: 12,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          controller.route.value?.name ?? "",
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              color: BaseColor.primaryColor,
                            ),
                            const Text(
                              'Acacías, Meta',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 24,
                bottom: 32,
              ),
              height: context.height,
              width: context.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(12),
                            ),
                            child: Image.asset(
                              'assets/images/acacias_canos_negros.jpeg',
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                      itemCount: 8,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(32),
                          ),
                          color: BaseColor.primaryColor.withOpacity(0.2),
                        ),
                        child: Icon(
                          Icons.map_outlined,
                          color: BaseColor.primaryColor,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Length\n',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            TextSpan(
                              text:
                                  '${controller.route.value?.distance ?? 0}km',
                              style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 48,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(32),
                          ),
                          color: BaseColor.primaryColor.withOpacity(0.2),
                        ),
                        child: Icon(
                          Icons.moving_outlined,
                          color: BaseColor.primaryColor,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Elevation\n',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                              ),
                            ),
                            TextSpan(
                              text: '425m',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'Route Details',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        controller.route.value?.descriptions ?? "",
                        style: const TextStyle(fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    width: context.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: BaseColor.primaryColor,
                        padding: const EdgeInsets.all(
                          16,
                        ),
                      ),
                      child: const Text(
                        'Navigate route',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
