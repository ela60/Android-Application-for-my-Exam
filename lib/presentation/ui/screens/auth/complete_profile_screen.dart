import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:project1/presentation/ui/utility/app_colors.dart';
import 'package:project1/presentation/ui/utility/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Center(
                    child: Image.asset(
                  'assets/images/download.jpg',
                  width: 120,
                )),
                const SizedBox(
                  height: 16,
                ),
                Text('Craft Bay',
                style:  TextStyle(color: Colors.blue.withOpacity(0.6)),),
                Text(
                  'Complete Profile',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontSize: 24,
                      ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'GEt started with us by share your details',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.grey,
                      ),
                ),
                const SizedBox(
                  height: 24,
                ),

                TextFormField(
                  decoration: const InputDecoration(hintText: 'First name'),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Last name'),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Mobile'),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'City'),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  maxLines: 6,
                  decoration: const InputDecoration(
                    hintText: 'Shipping address',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {},
                    child: const Text('Complete'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
