import 'package:flutter/material.dart';
import 'package:newsapp/model/category_card_mode.dart';

class category_ListView_widget extends StatelessWidget {
  category_ListView_widget({super.key});
  final List<category_card> categories = [
    category_card(image: 'assets/business.avif', categoryName: 'business'),
    category_card(
      image: 'assets/entertaiment.avif',
      categoryName: 'Entertainment',
    ),
    category_card(image: 'assets/health.avif', categoryName: 'health'),
    category_card(image: 'assets/science.avif', categoryName: 'science'),
    category_card(image: 'assets/sports.avif', categoryName: 'sports'),
    category_card(image: 'assets/technology.jpeg', categoryName: 'technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => categories[index],
      ),
    );
  }
}
