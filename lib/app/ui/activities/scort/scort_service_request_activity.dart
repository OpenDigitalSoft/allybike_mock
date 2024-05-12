import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScortServiceRequestActivity extends GetView {
  static const path = '/scort-service-request';
  const ScortServiceRequestActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Mis solicitudes',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const TabBar(
            labelStyle: TextStyle(fontFamily: 'Poppins'),
            tabs: [
              Tab(text: 'Aceptadas'),
              Tab(text: 'Pendientes'),
              Tab(text: 'Canceladas'),
            ],
          ),
        ),
      ),
    );
  }
}
