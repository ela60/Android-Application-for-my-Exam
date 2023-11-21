import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:project1/presentation/ui/widgets/category_card.dart';

class CategoryListScreens extends StatefulWidget {
  const CategoryListScreens({super.key});

  @override
  State<CategoryListScreens> createState() => _CategoryListScreensState();
}

class _CategoryListScreensState extends State<CategoryListScreens> {
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
            'Categories',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          leading: IconButton(
            onPressed: (){
              Get.find<MainButtonNAvController>().backToHome();
            },
            icon: const Icon(Icons.arrow_back,color: Colors.black,),
          )
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemBuilder: (context, index) {
                return const FittedBox(child: CategoryCard());
              }),
        ),
      ),
    );
  }
}
