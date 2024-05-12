import 'package:allybike/base/controller/base_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../network/api/biking_ride/biking_ride_api.dart';

class CreateBikingRideController extends BaseController {
  final BikingRideApi _bikingRideApi;
  final RxString textName = RxString("");
  final RxString textDateSelected = RxString("");
  final RxString textTimeSelected = RxString("");
  final RxString textRouteSelected = RxString("Selecciona una ruta");
  final RxString imagePathCover = RxString("");

  CreateBikingRideController(this._bikingRideApi);

  void onSelectDate(DateTime? dateTime) {
    if (dateTime != null) {
      textDateSelected.value =
          "${dateTime.day}/${dateTime.month}/${dateTime.year}";
    }
  }

  void onSelectTime(TimeOfDay picked) {
    textTimeSelected.value =
        "${picked.hour.toString().padLeft(2, '0')}:${picked.minute.toString().padLeft(2, '0')}";
  }

  void onSelectRoute(String routeName) {
    textRouteSelected.value = routeName;
  }

  void onSelectCoverImage(String imagePathCover) {
    this.imagePathCover.value = imagePathCover;
  }

  Future<void> onCreateBikingRide() async {
    DateFormat dateFormat = DateFormat('d/M/yyyy');
    DateTime parsedDate = dateFormat.parse(textDateSelected.value);

    List<String> timeParts = textTimeSelected.value.split(':');
    int hour = int.parse(timeParts[0]);
    int minute = int.parse(timeParts[1]);

    DateTime finalDateTime = DateTime.utc(
      parsedDate.year,
      parsedDate.month,
      parsedDate.day,
      hour,
      minute,
    );
    Map<String, String> fields = {
      'name': 'La super rodada',
      'date': finalDateTime.toString(),
      'organizer': 'Pepe',
      'idUser': 1.toString(),
      'link': 'link',
    };
    _bikingRideApi
        .createBikingRide([imagePathCover.value], fields)
        .then((value) {})
        .onError((error, stackTrace) {
          hideLoading();
        });
  }
}
