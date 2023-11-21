import 'package:flutter/material.dart';
import 'package:project1/presentation/ui/utility/app_colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            padding:const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8)
            ),
            child: Icon(Icons.shop,size: 40,color: Colors.purple,),
          ),
          const SizedBox(height: 8,),
          const Text('Churi*',style: TextStyle(
              fontSize: 15,
              color: AppColors.primaryColor,
              letterSpacing: 0.4
          ),),
        ],
      ),
    );
  }
}