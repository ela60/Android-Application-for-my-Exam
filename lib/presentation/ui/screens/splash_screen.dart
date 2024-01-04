import 'package:project1/presentation/state_holders/auth_controller.dart';
import 'package:project1/presentation/ui/screens/auth/email_verification_screen.dart';
import 'package:project1/presentation/ui/screens/main_bottom_nav_screen.dart';

import 'package:project1/presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    goToNextScreen();
  }

  Future<void> goToNextScreen() async {
    await AuthController.getAccessToken();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Get.offAll( () => AuthController.isLoggedIn
          ? const MainBottomNavScreen()
          : const EmailVerificationScreen());
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
              child: Image.asset(
            ImageAssets.craftBayLogosJpg,
            width: 120,
          )),
          const Spacer(),
          const CircularProgressIndicator(
            color: Color(0xFF0736AE),
          ),
          const SizedBox(
            height: 16,
          ),
          Text('version 1.0'),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
