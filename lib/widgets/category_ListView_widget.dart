import 'package:flutter/material.dart';
import 'package:newsapp/model/category_card_mode.dart';

class category_ListView_widget extends StatelessWidget {
  category_ListView_widget({super.key});
  final List<category_card> categories = [
    category_card(image: 'assets/business.avif', category: 'business'),
    category_card(image: 'assets/entertaiment.avif', category: 'Entertainment'),
    category_card(image: 'assets/health.avif', category: 'health'),
    category_card(image: 'assets/science.avif', category: 'science'),
    category_card(image: 'assets/sports.avif', category: 'sports'),
    category_card(image: 'assets/technology.jpeg', category: 'technology'),
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
