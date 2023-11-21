import 'package:project1/application/state_holder_binder.dart';
import 'package:project1/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:project1/presentation/ui/screens/splash_screen.dart';
import 'package:project1/presentation/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CraftBay extends StatelessWidget {
  const CraftBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: const SplashScreen(),
        initialBinding: StateHolderbinder(),
        theme: ThemeData(
            // primaryColor: Color(0xFF07ADAE),
            primarySwatch:
                MaterialColor(AppColors.primaryColor.value, AppColors().color),
            elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    textStyle: TextStyle(
                        fontSize: 16,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w600),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))))));
  }
}



