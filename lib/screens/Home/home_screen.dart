import 'package:ecommerce_mobile_app/models/product_model.dart';
import 'package:ecommerce_mobile_app/screens/Home/widget/category.dart';
import 'package:ecommerce_mobile_app/screens/Home/widget/product_card.dart';
import 'package:flutter/material.dart';

// my widgets
import 'package:ecommerce_mobile_app/screens/Home/widget/image_slider.dart';
import 'package:ecommerce_mobile_app/screens/Home/widget/search_bar.dart';
import 'package:ecommerce_mobile_app/screens/Home/widget/home_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 34),
                  const CustomAppBar(),
                  const SizedBox(height: 20),
                  const MySearchBar(),
                  const SizedBox(height: 20),
                  ImageSlider(
                      currentSlide: currentSlider,
                      onChange: (value) {
                        setState(() {
                          currentSlider = value;
                          print(currentSlider);
                        });
                      }),
                  const SizedBox(height: 20),
                  // for Categories section
                  const Categories(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Special For You",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.black54),
                      ),
                    ],
                  ),
                  // for shopping items
                  GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: .78,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        product: products[index],
                      );
                    },
                  )
                ],
              ))),
    );
  }
}
