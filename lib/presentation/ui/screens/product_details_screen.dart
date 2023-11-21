import 'package:flutter/material.dart';
import 'package:project1/presentation/ui/utility/app_colors.dart';
import 'package:project1/presentation/ui/widgets/custom_stepper.dart';
import 'package:project1/presentation/ui/widgets/home/product_image_slider.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List<Color> colors = [
    Colors.purple,
    Colors.deepOrange,
    Colors.deepPurple,
    Colors.lime,
    Colors.black,
    Colors.pink,
  ];
  List<String> Benglesizes = ['s', 'm', 'l', 'xl', 'xxl', 'xxxl'];
  int _selectedColorIndex = 0;
  int _selectedBengleSizeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Stack(
                    children: [
                      ProductImageSlider(),
                      AppBar(
                        leading: const BackButton(
                          color: Colors.black87,
                        ),
                        title: const Text(
                          'Product Details',
                          style: TextStyle(color: Colors.black87,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                        ),
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                      ),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    child: const Text(
                                  'Silk Thread Bangle - Update Collection',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 0.5),
                                )),
                                CustomStepper(
                                    lowerLimit: 1,
                                    upperLimit: 10,
                                    stepValue: 1,
                                    value: 1,
                                    onChange: (newValue) {
                                      print(newValue);
                                    })
                              ],
                            ),
                            Row(
                              children: [
                                Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.star_border,
                                      size: 20,
                                      color: Colors.amber,
                                    ),
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.blueGrey),
                                    ),
                                  ],
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Review',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: AppColors.primaryColor,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Card(
                                  color: AppColors.primaryColor,
                                  child: Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Icon(
                                      Icons.favorite_border,
                                      size: 14,
                                      color: Colors.purple,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Text(
                              'Color',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            SizedBox(
                              height: 28,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: colors.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    borderRadius: BorderRadius.circular(20),
                                    onTap: () {
                                      _selectedColorIndex = index;
                                      if (mounted) {
                                        setState(() {});
                                      }
                                    },
                                    child: CircleAvatar(
                                      radius: 16,
                                      backgroundColor: colors[index],
                                      child: _selectedColorIndex == index
                                          ? const Icon(
                                              Icons.done,
                                              color: AppColors.primaryColor,
                                            )
                                          : null,
                                    ),
                                  );
                                },
                                separatorBuilder: (BuildContext context, int index) {
                                  {
                                    return const SizedBox(
                                      width: 8,
                                    );
                                  }
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Text(
                              'BengleSizes',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            SizedBox(
                              height: 28,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: Benglesizes.length,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                      borderRadius: BorderRadius.circular(4),
                                      onTap: () {
                                        _selectedBengleSizeIndex = index;
                                        if (mounted) {
                                          setState(() {});
                                        }
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 8),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: Colors.purple),
                                            borderRadius: BorderRadius.circular(4),
                                            color: _selectedBengleSizeIndex == index
                                                ? AppColors.primaryColor
                                                : null),
                                        alignment: Alignment.center,
                                        child: Text(Benglesizes[index]),
                                      ));
                                },
                                separatorBuilder: (BuildContext context, int index) {
                                  {
                                    return const SizedBox(
                                      width: 8,
                                    );
                                  }
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            const Text(
                              'Description',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                            const Text(
                                '''Bengali means belonging or relating to Bengal, or to its people or language. She married a Bengali doctor. 2. countable noun. A Bengali is a person who comes from Bangladesh or West Bengal.something believed to bring good luck. good luck charm. attractiveness that interests or pleases or stimulates. appeal, appealingness. আকর্ষণীয় উপাদান, ...
                            ''')
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.3),
                borderRadius:const  BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16)
                )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        '\$600',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: AppColors.primaryColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 130,
                  child:
                  ElevatedButton(onPressed: () {}, child: Text('Add to Cart'),),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
