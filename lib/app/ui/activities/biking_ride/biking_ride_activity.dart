import 'package:allybike/app/controllers/biking_ride/biking_ride_controller.dart';
import 'package:allybike/app/ui/activities/biking_ride/biking_ride_detail_activity.dart';
import 'package:allybike/app/ui/activities/biking_ride/create_biking_ride_activity.dart';
import 'package:allybike/base/theme/base_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class BikingRideActivity extends GetView {
  final BikingRideController _bikingRideController = Get.put(
    BikingRideController(
      Get.find(),
    ),
  );

  BikingRideActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(
          int.parse('FFF7F7F7', radix: 16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: context.height / 4.5,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(48),
                      bottomRight: Radius.circular(48),
                    ),
                    color: BaseColor.primaryColor,
                  ),
                ),
                Positioned(
                  top: 70,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 48),
                        child: Text(
                          'Your location',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 48),
                        child: Text(
                          'Acacías',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: context.width / 1.14,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                        padding: const EdgeInsets.only(
                          left: 24,
                          top: 4,
                          bottom: 4,
                        ),
                        margin: const EdgeInsets.only(
                          left: 22,
                          top: 32,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: BaseColor.primaryColor,
                            ),
                            const SizedBox(width: 10.0),
                            const Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search event...',
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
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 8),
              child: Text(
                'Near By You',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            Obx(
              () => Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, bottom: 80),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.builder(
                          padding: const EdgeInsets.only(top: 24),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: _bikingRideController.bikingRides.length,
                          itemBuilder: (context, index) {
                            var bikingRide =
                                _bikingRideController.bikingRides[index];
                            return GestureDetector(
                              onTap: () {
                                Get.toNamed(
                                  BikingRideDetailActivity.path,
                                  arguments: {
                                    'biking_ride': bikingRide,
                                  },
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.only(
                                  bottom: 24,
                                  right: 16,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(12.0),
                                        topRight: Radius.circular(12.0),
                                      ),
                                      child: Image.asset(
                                        'assets/images/cycling_event.jpg',
                                        width: double.infinity,
                                        height: 180.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            DateFormat('EEEE, MMMM d, yyyy')
                                                .format(
                                              bikingRide.date,
                                            ),
                                            style: TextStyle(
                                              color: BaseColor.primaryColor,
                                              fontSize: 14.0,
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                          Text(
                                            bikingRide.name,
                                            style: const TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Poppins',
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Row(
                                            children: [
                                              Icon(
                                                Icons.place_rounded,
                                                size: 18,
                                                color: Colors.grey,
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  'Villavicencio, Meta',
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Colors.grey,
                                                    fontFamily: 'Poppins',
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 8.0),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 42),
        child: FloatingActionButton(
          onPressed: () {
            Get.toNamed(CreateBikingRideActivity.path);
          },
          elevation: 0,
          child: const Icon(Icons.add_circle),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
