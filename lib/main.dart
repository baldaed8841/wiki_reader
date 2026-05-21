import 'package:flutter/material.dart';
import 'package:wiki_reader/go_router.dart';
import 'package:wiki_reader/summary_hive_box.dart';

Future main() async {
  await Hive.initflutter();
  Hive.registerAdapter(ArticleAdapter);
  await Hive.openBox(summaryHiveBox);
  runApp(const MainApp());
}
