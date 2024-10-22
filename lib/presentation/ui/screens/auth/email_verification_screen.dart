import 'package:project1/presentation/ui/utility/image_assets.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:project1/presentation/state_holders/email_verification_controller.dart';
import 'otp_verification_screen.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(
                    fontSize: 24,
                  ),
                ),

                const SizedBox(
                  height: 8,
                ),
                Text(
                  'please enter your email address',
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _emailTEController,
                  decoration: const InputDecoration(hintText: 'Email'),
                    validator: (String? text) {
                    if (text?.isEmpty ?? true) { //null check
                      return 'Enter your email address';
                    } else if (text!.isEmail== false) { //(!. ) =nullity check )email and false o na
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
                  child: GetBuilder<EmailVerificationController>(
                      builder: (controller) {
                        if (controller.emailVerificationInProgress) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return ElevatedButton(

                          onPressed: ()  {
                            //(!.=Four sun rap)
                            if (_formKey.currentState!.validate()) {
                             verifyEmail(controller);
                              //verifyEmail(controller);
                            }
                          },
                          child: const Text('NEXT'),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Future<void> verifyEmail(EmailVerificationController controller) async {
    final response = await controller.verifyEmail(
        _emailTEController.text
            .trim());

    //trim means ashe pashe faka space off krbe
    if (response) {
      Get.to( () => OTPVerificationScreen(email:  _emailTEController.text
          .trim(),));
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
            Text('Email verificaton failed try again'),
          ),
        );
     }
    }
  }

}



