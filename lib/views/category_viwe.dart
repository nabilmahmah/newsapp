import 'package:flutter/material.dart';
import 'package:newsapp/widgets/sliver_listViwe_widget.dart';

class CategoryViwe extends StatelessWidget {
  const CategoryViwe({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: CustomScrollView(slivers: [NewsSliverList(category: category)]),
      ),
    );
  }
}
