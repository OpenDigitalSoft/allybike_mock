import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';

import '../../../../base/theme/base_color.dart';

class CreateRouteActivity extends GetView {
  static const path = '/create-route';
  const CreateRouteActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        child: Stack(
          children: [
            FlutterMap(
              options: const MapOptions(
                initialCenter: LatLng(
                  4.006626,
                  -73.771602,
                ),
                initialZoom: 12,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32, left: 32, top: 120),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: BaseColor.primaryColor.withOpacity(0.15),
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
                                  hintText: 'Origen',
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
                                  hintText: 'Destino',
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
                ],
              ),
            ),
            Positioned(
              top: 70,
              left: 18,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(Icons.arrow_back_ios),
              ),
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.2, // 30% de la pantalla
              minChildSize: 0.2,
              maxChildSize: 0.8, // 80% de la pantalla
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SizedBox(
                        height: Get.height,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'Datos de la Ruta',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                label: Text(
                                  'Route title',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                border: UnderlineInputBorder(),
                              ),
                              controller: TextEditingController(
                                text: '',
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                label: Text(
                                  'Description',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                border: UnderlineInputBorder(),
                              ),
                              controller: TextEditingController(
                                text: '',
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Text(
                              'Dificultad',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Radio<String>(
                                  value: 'Fácil',
                                  groupValue: 'Fácil',
                                  onChanged: (String? value) {},
                                ),
                                const Text(
                                  'Fácil',
                                  style: TextStyle(fontFamily: 'Poppins'),
                                ),
                                Radio<String>(
                                  value: 'Medio',
                                  onChanged: (String? value) {},
                                  groupValue: '',
                                ),
                                const Text(
                                  'Medio',
                                  style: TextStyle(fontFamily: 'Poppins'),
                                ),
                                Radio<String>(
                                  value: 'Difícil',
                                  groupValue: '',
                                  onChanged: (String? value) {},
                                ),
                                const Text(
                                  'Difícil',
                                  style: TextStyle(fontFamily: 'Poppins'),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                const Text(
                                  'Tipo de Ruta: ',
                                  style: TextStyle(fontFamily: 'Poppins'),
                                ),
                                const SizedBox(
                                    width:
                                        8), // Espaciado entre el texto y el DropdownButton
                                DropdownButton<String>(
                                  value: 'Ruta',
                                  onChanged: (String? newValue) {},
                                  style: const TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.black),
                                  items: <String>['Ruta', 'Montaña']
                                      .map((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Imágenes',
                              style: TextStyle(fontFamily: 'Poppins'),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
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
                            const SizedBox(
                              height: 48,
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
                                  'Crear',
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
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
