import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../base/theme/base_color.dart';
import 'scort_service_request_activity.dart';

class ScortServiceActivity extends GetView {
  static const path = "/scort-service";
  const ScortServiceActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Acompañamiento',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(ScortServiceRequestActivity.path);
                  },
                  child: Text(
                    'Ver solicitudes',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: BaseColor.primaryColor,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_right_alt_outlined,
                  color: BaseColor.primaryColor,
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 4,
                    offset: const Offset(0, -1),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.directions_bike_outlined,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        '|',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 22,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Lugar de recogida',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scaleX: -1.0,
                        child: const Icon(
                          Icons.directions_bike,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Text(
                        '|',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 22,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Lugar de destino',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 4,
                    offset: const Offset(0, -1),
                  ),
                ],
              ),
              child: const Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month_outlined,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        '|',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 22,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Fecha',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 4,
                          offset: const Offset(0, -1),
                        ),
                      ],
                    ),
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.motorcycle_outlined,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              '|',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 22,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Moto',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                style: TextStyle(fontFamily: 'Poppins'),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 4,
                          offset: const Offset(0, -1),
                        ),
                      ],
                    ),
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.car_rental_outlined,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              '|',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 22,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Carro',
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                style: TextStyle(fontFamily: 'Poppins'),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
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
                  'Solicitar',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
