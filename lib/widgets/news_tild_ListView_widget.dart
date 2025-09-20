import 'package:flutter/material.dart';
import 'package:newsapp/model/artical.dart';
import 'package:newsapp/widgets/news_tild.dart';
import 'dart:math';

class news_tild_ListView_widget extends StatelessWidget {
  news_tild_ListView_widget({super.key, required this.articalList});

  final List<Artical> articalList;

  @override
  Widget build(BuildContext context) {
    articalList.sort((a, b) => Random().nextInt(10) - 0);
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articalList.length, (
        context,
        index,
      ) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: news_tild(artical: articalList[index]),
        );
      }),
    );
  }
}
