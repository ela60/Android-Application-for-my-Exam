import 'dart:convert';
import 'dart:developer';
//import 'dart:math';
import 'package:http/http.dart';
import 'package:project1/data/models/network_response.dart';


class NetworkCaller{

  //get request method
  Future<NetWorkResponse>getRequest(String url)async{
    try{
      Response response = await get(Uri.parse(url),);
          // headers:{'token':AuthUtility.userInfo.token.toString()});
      log(response.statusCode.toString());
      log(response.body);
      if(response.statusCode == 200 &&
          jsonDecode(response.body)['message'] =='success'){
        return NetWorkResponse(
          true, response.statusCode,jsonDecode(response.body));

      }
      else if(response.statusCode == 401){
        gotoLogin();
      }
      else{
        return NetWorkResponse(false,response.statusCode,null);
      }
    }catch(e){
      log(e.toString());
    }
    return NetWorkResponse(false, -1, null);
  }

  Future <NetWorkResponse> postRequest (String url, Map<String, dynamic> body, {
    bool isLogin = false}) async{
    try{
      Response response = await post(
      Uri.parse(url),
  headers:{
        'Content-Type':'application/json',
          // 'token':AuthUtility.userInfo.token.toString()
  },
  body:jsonEncode(body),
      );
      log(response.statusCode.toString());
      log(response.body);
      if(response.statusCode ==200 &&
     jsonDecode(response.body)['status']=='sucess'){
        return NetWorkResponse(
        true,
        response.statusCode,
        jsonDecode(response.body),
        );
  }
  else if(response.statusCode ==401){
    if( isLogin == false){
      gotoLogin();

  }
  } else{
    return NetWorkResponse(false,response.statusCode,null);
  }

  }catch(e){
      log(e.toString());
  }
  return NetWorkResponse(false,-1,null);
  }
  Future<void>gotoLogin() async{
  //   await AuthUtility.clearUserInfo();
  //   Navigator.pushAndRemoveUnit(
  // TaskManagerApp.globalKey.currentContext!,
  // MaterialPageRoute(builder: (context) => LoginScreen()),
  // (route) =>false);

  }
}




