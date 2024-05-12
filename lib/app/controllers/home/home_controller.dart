import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../base/controller/base_controller.dart';
import '../../ui/activities/biking_ride/biking_ride_activity.dart';
import '../../ui/activities/profile/profile_activity.dart';
import '../../ui/activities/route/route_activity.dart';
import '../../ui/activities/service/service_activity.dart';

class HomeController extends BaseController {
  final List<Widget> pages = [
    const ServiceActivity(),
    RouteActivity(),
    BikingRideActivity(),
    const ProfileActivity(),
  ];
  final _pageIndex = 0.obs;

  void updateTab(int position) {
    _pageIndex.value = position;
  }

  int getCurrentIndex() {
    return _pageIndex.value;
  }
}
