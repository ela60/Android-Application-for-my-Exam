import 'package:get/route_manager.dart';
import 'package:flutter/material.dart';
import 'otp_verification_screen.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTEController= TextEditingController();
  GlobalKey<FormState> _formKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
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
                  'Welcome back',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 24,
                      ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'please enter your email address',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.grey,
                      ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  controller: _emailTEController,
                  decoration: const InputDecoration(
                    hintText: 'Email'
                  ),
                    validator: (String? text){
                    if(text?.isEmpty ?? true){
                      return 'Enter your email address';
                    } else if(text!.isEmpty == false){
                      //REGEX (Email validator)
                      return 'Enter a valid email address';
                    }
                    return null;
                   },
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {
                      //(!=Four sun rap)
                      if(_formKey.currentState!.validate()){
                        Get.to(const OTPVerificationScreen());
                      }

                    },
                    child: const Text('NEXT'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
