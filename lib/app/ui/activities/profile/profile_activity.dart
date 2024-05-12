import 'package:allybike/app/ui/activities/login/login_activity.dart';
import 'package:allybike/app/ui/activities/profile/profile_detail_activity.dart';
import 'package:allybike/base/theme/base_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileActivity extends GetView {
  const ProfileActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        int.parse('FFF7F7F7', radix: 16),
      ),
      body: Container(
        width: context.width,
        margin: const EdgeInsets.only(top: 80),
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/profile_placeholder.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  right: 15,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: BaseColor.primaryColor,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              'Andrés Urrego',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(ProfileDetailActivity.path);
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.person_2_outlined,
                          size: 28,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Text(
                            'Account Info',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_right_alt_rounded)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(LoginActivity.path);
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.key_outlined,
                          size: 28,
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Text(
                            'Change Password',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Icon(Icons.arrow_right_alt_rounded)
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Divider(
                    height: 1,
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.credit_card,
                        size: 28,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Text(
                          'Manage subscription',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_right_alt_rounded)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.logout_outlined,
                        size: 28,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Text(
                          'Logout',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_right_alt_rounded)
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
