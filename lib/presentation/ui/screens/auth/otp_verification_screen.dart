import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:project1/presentation/ui/screens/auth/complete_profile_screen.dart';
import 'package:project1/presentation/ui/utility/app_colors.dart';
import 'package:project1/presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() =>
      _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  final TextEditingController _otpTEController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 80,
                ),
                Center(
                    child: Image.asset(
                      'assets/images/download.jpg',
                      width: 120,
                    )),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Enter your OTP code',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'A 4 digit OTP code has been sent',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                PinCodeTextField(
                  controller: _otpTEController,
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 50,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    activeColor: AppColors.primaryColor,
                    inactiveColor: AppColors.primaryColor,
                    selectedColor: Colors.green
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,


                  onCompleted: (v) {

                  },
                  onChanged: (value) {

                  },
                  beforeTextPaste: (text) {

                    return true;
                  }, appContext: context,
                ),
                  
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {
                    Get.offAll(const CompleteProfileScreen());
                    },
                    child: const Text('NEXT'),
                  ),
                ),
                const SizedBox(height: 24,),
                RichText(text: TextSpan(
                  style: TextStyle(
                    color:Colors.grey
                  ),
                  children: [
                    TextSpan(
                      text: 'This code will expire in'
                    ),
                    TextSpan(
                      text: '120s ',
                      style: TextStyle(
                        color:AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      )
                    )

                  ]
                ),),
                TextButton(onPressed: () {

                }, child: const Text('Resend'),style: TextButton.styleFrom(
                 foregroundColor: Colors.grey
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
