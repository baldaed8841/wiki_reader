import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wiki_reader/summary.dart';
import 'package:wiki_reader/summary_hive_box.dart';
import 'package:wiki_reader/ui/article_page/article_widget.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen ({super.key});
  const final SummaryHiveBox = SummaryHiveBox.getAll();
  @override
  Widget build(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        ArticleWidget(summary: summary),
        ElevatedButton(onPressed: onPressed, child: Text("Favorite")),
      ],
    ),
  );
 }
}