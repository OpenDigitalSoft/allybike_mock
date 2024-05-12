import 'package:allybike/app/controllers/biking_ride/biking_ride_detail_controller.dart';
import 'package:allybike/base/theme/base_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';

class BikingRideDetailActivity extends GetView<BikingRideDetailController> {
  static const path = "/event-detail";

  const BikingRideDetailActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.medium(
            backgroundColor: Colors.white,
            pinned: true,
            expandedHeight: context.height / 3.5,
            flexibleSpace: Image.asset(
              'assets/images/cycling_event.jpg',
              height: context.height,
              width: context.width,
              fit: BoxFit.cover,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16,
                    bottom: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        controller.bikingRide.value?.name ?? "",
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
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
                            child: Image.asset(
                              'assets/images/allybike_brand_splash.png',
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                const TextSpan(
                                  text: 'Hosted by\n',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                TextSpan(
                                  text:
                                      controller.bikingRide.value?.organizer ??
                                          "",
                                  style: const TextStyle(
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
                      Divider(
                        color: Colors.grey.shade300,
                        height: 1,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.calendar_month_outlined,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: '${DateFormat('yyyy/MM/dd').format(
                                      controller.bikingRide.value!.date,
                                    )}\n',
                                    style: const TextStyle(
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  TextSpan(
                                    text: '${DateFormat('HH:mm a').format(
                                      controller.bikingRide.value!.date,
                                    )}\n\n',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.grey.shade600,
                                      fontSize: 14,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Add to calendar',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: BaseColor.primaryColor,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Text.rich(
                              TextSpan(
                                children: [
                                  const TextSpan(
                                    text: 'CC. Viva\n',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Villavicencio, Meta',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: Colors.grey.shade600,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Text(
                        'About',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        'INSCRIBETE AQUI: https://share.hsforms.com/1l5Nw6ZKTSsK4AI5iHG156Qehcs5\nTe invitamos a nuestra gran rodada de Aniversario.\nFecha: 13 de Abril.\nLugar: Mobok Chia.\nLugar de destino: Margaritas.\nHora de encuentro: 6:30 am.\nHora de salida: 7:00 am.\n\ntendremos acompañamiento motorizado, café, bananos, bocadillos.\nal regreso estaremos acompañados de LA BUTIQUE DE LAS CARNES con un brunch (sangría),  no te pierdas esta gran experiencia.',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        'Route',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
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
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
