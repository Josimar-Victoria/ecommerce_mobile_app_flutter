import 'package:ecommerce_mobile_app/models/category.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length ,
        itemBuilder: (context, index) {
          return Column(children: [Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(categoriesList[index].image), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(height: 5), 
          Text(categoriesList[index].title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),)
          ],
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 20),
      )
    );
  }
}