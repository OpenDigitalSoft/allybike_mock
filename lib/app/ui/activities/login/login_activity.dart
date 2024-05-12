import 'package:allybike/app/ui/activities/sign_up/sign_up_activity.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../base/theme/base_color.dart';

class LoginActivity extends GetView {
  const LoginActivity({super.key});
  static const path = "/login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: context.width,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hey! Welcome back',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Login to your account',
              style: TextStyle(
                fontFamily: 'Poppins',
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    blurRadius: 4,
                    offset: const Offset(0, -1),
                  ),
                ],
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.email_outlined,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
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
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    blurRadius: 4,
                    offset: const Offset(0, -1),
                  ),
                ],
              ),
              child: const Row(
                children: [
                  Icon(
                    Icons.lock_outline_rounded,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: '* * * * * *',
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
            ),
            const SizedBox(
              height: 12,
            ),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forget password?',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 24,
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
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    const TextSpan(
                      text: 'Do not have an account? ',
                    ),
                    TextSpan(
                      text: 'Sign up',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Get.toNamed(SignUpActivity.path);
                        },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
