import 'package:flutter/material.dart';
import 'package:newsapp/model/artical.dart';
import 'package:newsapp/services/news_services.dart';
import 'package:newsapp/widgets/news_tild_ListView_widget.dart';

class NewsSliverList extends StatefulWidget {
  const NewsSliverList({super.key, required this.category});
  final String category;
  @override
  State<NewsSliverList> createState() => _NewsSliverListState();
}

class _NewsSliverListState extends State<NewsSliverList> {
  var future;
  @override
  void initState() {
    super.initState();
    future = NewsServices().getNews(category: "general");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Artical>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Center(child: Text("oops there was an error,try later")),
          );
        } else if (snapshot.hasData) {
          return news_tild_ListView_widget(articalList: snapshot.data!);
        } else {
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
