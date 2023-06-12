import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

import '../models/article.dart';
import '../providers/articles.dart';
import 'recommendedArticle.dart';

class ArticleBuilder extends StatefulWidget {
  const ArticleBuilder({
    super.key,
    required this.dataMain,
  });

  final List<Article> dataMain;

  @override
  State<ArticleBuilder> createState() => _ArticleBuilderState();
}

class _ArticleBuilderState extends State<ArticleBuilder> {
  bool isInit = true;
  var futuredata;

  @override
  void initState() {
    futuredata = Provider.of<Articles>(context, listen: false).dataMaster();
  }

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<Articles>(context).articleItem;
    final dataMain = data;

    return ListView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (context, index) => ChangeNotifierProvider.value(
          value: dataMain[index], child: const recommendedArticle()),
      itemCount: dataMain.length,
    );
  }
}
