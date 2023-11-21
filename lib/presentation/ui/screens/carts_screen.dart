import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project1/presentation/state_holders/main_bottom_nav_controller.dart';
import 'package:project1/presentation/ui/utility/app_colors.dart';
import 'package:project1/presentation/ui/utility/image_assets.dart';
import 'package:project1/presentation/ui/widgets/cart_product_card.dart';
import 'package:project1/presentation/ui/widgets/custom_stepper.dart';

class CarsScreen extends StatefulWidget {
  const CarsScreen({super.key});

  @override
  State<CarsScreen> createState() => _CarsScreenState();
}

class _CarsScreenState extends State<CarsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Carts',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 2,
          leading: IconButton(
            onPressed: () {
              Get.find<MainButtonNAvController>().backToHome();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),),
      body: Column(
        children: [
          Expanded(
              child:ListView.builder(
                itemCount: 4,
                  itemBuilder: (context,index){
                return const CartProductCard();
              })
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.3),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Price',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      '\$600.00',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: AppColors.primaryColor),
                    ),
                  ],
                ),
                SizedBox(
                  width: 130,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Checkout'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

