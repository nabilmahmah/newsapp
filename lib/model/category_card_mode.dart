import 'package:flutter/material.dart';
import 'package:newsapp/views/category_viwe.dart';

class category_card extends StatelessWidget {
  const category_card({
    required this.image,
    required this.categoryName,
    super.key,
  });
  final String image;
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategoryViwe(category: categoryName);
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          width: 200,
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
          ),
          child: Center(
            child: Text(categoryName, style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
