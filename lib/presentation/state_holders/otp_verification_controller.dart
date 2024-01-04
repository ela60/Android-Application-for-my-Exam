import 'dart:html';

import 'package:get/get.dart';
import 'package:project1/data/models/network_response.dart';
import 'package:project1/data/utility/network_caller.dart';
import 'package:project1/data/utility/url.dart';
import 'package:project1/presentation/state_holders/auth_controller.dart';

class OtpVerificationController extends GetxController{
  bool _otpVerificationInProgress= false;
  String _message='';
  bool get otpVerificationInProgress=> _otpVerificationInProgress;
  String get message => _message;
  Future<bool> verifyOtp(String email,String otp) async{
    _otpVerificationInProgress= true;
    update();
    final NetWorkResponse response= await NetworkCaller().getRequest(Url.verifyotp(email,otp));
    _otpVerificationInProgress= false;
    update();
    if(response.isSuccess){
      await
     AuthController.setAccessToken( response.responseJson?['data']);
     // _message = response.responseJson?['data']  ?? '';//four sunRap(??)
      return true;
    }else{

      return false;
    }

  }
}