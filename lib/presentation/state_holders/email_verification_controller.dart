import 'dart:html';

import 'package:get/get.dart';
import 'package:project1/data/models/network_response.dart';
import 'package:project1/data/utility/network_caller.dart';
import 'package:project1/data/utility/url.dart';

class EmailVerificationController extends GetxController{
 bool _emailVerificationInProgress= false;
 String _message='';
 bool get emailVerificationInProgress=> _emailVerificationInProgress;
 String get message => _message;
 Future<bool> verifyEmail(String email) async{
  _emailVerificationInProgress= true;
  update();
  final NetWorkResponse response= await NetworkCaller().getRequest(Url.verifyEmail(email));
  _emailVerificationInProgress= false;
  update();
  if(response.isSuccess){
   return true;
  }else{

    return false;
  }

 }
}