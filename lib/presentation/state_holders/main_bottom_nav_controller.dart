import 'package:get/get.dart';

class MainButtonNAvController  extends GetxController{
  int currentSelectedIndex =0;

  void ChangeScreen(int index){
    currentSelectedIndex=index;
    update();
  }
  void backToHome(){
    ChangeScreen(0);
  }
}