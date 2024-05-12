import 'dart:io';

import 'package:allybike/app/controllers/biking_ride/create_biking_ride_controller.dart';
import 'package:allybike/app/ui/activities/route/create_route_activity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:latlong2/latlong.dart';

import '../../../../base/theme/base_color.dart';

class CreateBikingRideActivity extends GetView<CreateBikingRideController> {
  static const path = "/create-biking-ride";
  const CreateBikingRideActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Crear rodada',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Container(
                          width: Get.width / 1.8,
                          height: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: controller.imagePathCover.value.isNotEmpty
                                  ? FileImage(
                                      File(
                                        controller.imagePathCover.value,
                                      ),
                                    ) as ImageProvider
                                  : const AssetImage(
                                      'assets/images/cycling_placeholder_ride.jpg',
                                    ) as ImageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                onSelectImageFromGallery();
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  size: 20,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              'Make cover photo',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(
                        'Event title',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                        ),
                      ),
                      border: UnderlineInputBorder(),
                    ),
                    controller: TextEditingController(
                      text: controller.textName.value,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Obx(
                          () => TextFormField(
                            onTap: () async {
                              await onShowDatePicker(context);
                            },
                            readOnly: true,
                            decoration: const InputDecoration(
                              label: Text(
                                'Date',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              border: UnderlineInputBorder(),
                              suffixIcon: Icon(
                                Icons.date_range_outlined,
                              ),
                            ),
                            controller: TextEditingController(
                              text: controller.textDateSelected.value,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Obx(
                          () => TextFormField(
                            onTap: () async {
                              await onShowTimePicker(context);
                            },
                            readOnly: true,
                            decoration: const InputDecoration(
                              label: Text(
                                'Time',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                ),
                              ),
                              border: UnderlineInputBorder(),
                              suffixIcon: Icon(
                                Icons.query_builder_outlined,
                              ),
                            ),
                            controller: TextEditingController(
                              text: controller.textTimeSelected.value,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(
                        'Location',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                        ),
                      ),
                      border: UnderlineInputBorder(),
                      suffixIcon: Icon(
                        Icons.place_outlined,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: const InputDecoration(
                      label: Text(
                        'Description',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                        ),
                      ),
                      border: UnderlineInputBorder(),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const Text(
                    'Ruta',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      Expanded(
                        child: Obx(
                          () => Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 12.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                isExpanded: true,
                                value: controller.textRouteSelected.value,
                                onChanged: (String? newValue) {
                                  controller.onSelectRoute(newValue!);
                                },
                                items: <String>[
                                  'Selecciona una ruta',
                                  'Caños negros',
                                  'El pañuelo',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.add_circle_outline,
                          color: BaseColor.primaryColor,
                        ),
                        onPressed: () {
                          Get.toNamed(
                            CreateRouteActivity.path,
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: 250,
                    child: FlutterMap(
                      options: const MapOptions(
                        initialCenter: LatLng(
                          4.006626,
                          -73.771602,
                        ),
                        initialZoom: 12,
                      ),
                      children: [
                        TileLayer(
                          urlTemplate:
                              'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                          userAgentPackageName: 'com.example.app',
                        ),
                        PolylineLayer(
                          polylines: [
                            Polyline(
                              points: [
                                const LatLng(
                                  4.008966,
                                  -73.772736,
                                ),
                                const LatLng(
                                  4.017809,
                                  -73.776435,
                                ),
                                const LatLng(
                                  4.032019,
                                  -73.774400,
                                ),
                                const LatLng(
                                  4.035970,
                                  -73.768476,
                                ),
                              ],
                              color: BaseColor.primaryColor,
                              strokeWidth: 3,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: context.width,
                child: ElevatedButton(
                  onPressed: () {
                    controller.onCreateBikingRide();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: BaseColor.primaryColor,
                    padding: const EdgeInsets.all(
                      16,
                    ),
                  ),
                  child: const Text(
                    'Crear',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> onShowTimePicker(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (picked != null) {
      controller.onSelectTime(picked);
    }
  }

  Future<void> onShowDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    controller.onSelectDate(picked);
  }

  Future<void> onSelectImageFromGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      controller.onSelectCoverImage(pickedFile.path);
    } else {
      print('No se seleccionó ninguna imagen');
    }
  }
}
