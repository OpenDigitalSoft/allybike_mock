import 'package:allybike/app/controllers/biking_ride/biking_ride_detail_binding.dart';
import 'package:allybike/app/ui/activities/biking_ride/biking_ride_detail_activity.dart';
import 'package:allybike/app/ui/activities/biking_ride/create_biking_ride_activity.dart';
import 'package:allybike/app/ui/activities/login/login_activity.dart';
import 'package:allybike/app/ui/activities/route/detail_route_activity.dart';
import 'package:allybike/app/ui/activities/sign_up/sign_up_activity.dart';
import 'package:get/get.dart';

import '../controllers/biking_ride/create_biking_ride_binding.dart';
import '../controllers/home/home_binding.dart';
import '../controllers/route/route_detail_binding.dart';
import '../ui/activities/home/home_activity.dart';
import '../ui/activities/profile/profile_detail_activity.dart';
import '../ui/activities/route/create_route_activity.dart';
import '../ui/activities/scort/scort_service_activity.dart';
import '../ui/activities/scort/scort_service_request_activity.dart';

class AppRoutes {
  AppRoutes._();

  static final routes = [
    GetPage(
      name: HomeActivity.path,
      page: () => const HomeActivity(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: ProfileDetailActivity.path,
      page: () => const ProfileDetailActivity(),
    ),
    GetPage(
      name: LoginActivity.path,
      page: () => const LoginActivity(),
    ),
    GetPage(
      name: SignUpActivity.path,
      page: () => const SignUpActivity(),
    ),
    GetPage(
      name: DetailRouteActivity.path,
      page: () => const DetailRouteActivity(),
      binding: RouteDetailBinding(),
    ),
    GetPage(
      name: BikingRideDetailActivity.path,
      page: () => const BikingRideDetailActivity(),
      binding: BikingRideDetailBinding(),
    ),
    GetPage(
      name: ScortServiceActivity.path,
      page: () => const ScortServiceActivity(),
    ),
    GetPage(
      name: CreateBikingRideActivity.path,
      page: () => const CreateBikingRideActivity(),
      binding: CreateBikingRideBinding(),
    ),
    GetPage(
      name: CreateRouteActivity.path,
      page: () => const CreateRouteActivity(),
    ),
    GetPage(
      name: ScortServiceRequestActivity.path,
      page: () => const ScortServiceRequestActivity(),
    ),
  ];
}
