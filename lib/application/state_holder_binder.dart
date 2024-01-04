import 'package:get/get.dart';
import 'package:project1/presentation/state_holders/email_verification_controller.dart';
import 'package:project1/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:project1/presentation/state_holders/otp_verification_controller.dart';

class StateHolderbinder  extends Bindings {
  @override
  void dependencies() {
    Get.put(MainButtonNAvController());
    Get.put(EmailVerificationController());
    Get.put(OtpVerificationController());
  }
}