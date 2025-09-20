import 'package:flutter/material.dart';
import 'package:newsapp/widgets/category_ListView_widget.dart';
import 'package:newsapp/widgets/sliver_listViwe_widget.dart';

class home_view extends StatelessWidget {
  const home_view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              'Cloud',
              style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: category_ListView_widget()),
            SliverToBoxAdapter(child: SizedBox(height: 30)),
            NewsSliverList(category: "general"),
          ],
        ),
      ),
    );
  }
}
