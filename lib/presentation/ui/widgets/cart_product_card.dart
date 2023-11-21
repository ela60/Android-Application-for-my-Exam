import 'package:flutter/material.dart';
import 'package:project1/presentation/ui/utility/app_colors.dart';
import 'package:project1/presentation/ui/utility/image_assets.dart';
import 'package:project1/presentation/ui/widgets/custom_stepper.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(ImageAssets.BahariBenglePng2),
                )),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Gold Plated Bengles New Collection',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 12),
                                  children: [
                                    TextSpan(text: 'Color: Pink '),
                                    TextSpan(text: 'Size: m')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.delete_outline))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$100',
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                        CustomStepper(
                            lowerLimit: 1,
                            upperLimit: 20,
                            stepValue: 1,
                            value: 1,
                            onChange: (int value) {}),
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
