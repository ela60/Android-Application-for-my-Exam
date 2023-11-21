import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:project1/presentation/ui/widgets/category_card.dart';
import 'package:project1/presentation/ui/widgets/product_card.dart';



class WishListScreens extends StatefulWidget {
  const WishListScreens({super.key});

  @override
  State<WishListScreens> createState() => _WishListScreensState();
}

class _WishListScreensState extends State<WishListScreens> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async{
        Get.find<MainButtonNAvController>().backToHome();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'WishList',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          leading: BackButton(
            color: Colors.black,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemBuilder: (context, index) {
                return const FittedBox(
                    child: ProductCard());
              }),
        ),
      ),
    );
  }
}
