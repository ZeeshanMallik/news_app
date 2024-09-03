import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../news_data.dart';

class NewsDetail extends StatelessWidget{

  NewsDetail({
    super.key,  required this.position
  });

  int position;

  NewsData getSelectedData(int pos) {
    List<NewsData> items = getNewsData();
    return items[pos];
  }


  @override
  Widget build(BuildContext context) {

   /* NewsData data =  getSelectedData(2);
    String headline = data.headline;*/

    return MaterialApp(
        home: Scaffold(
          body:  Column(
              children: [
                Image.asset("${getSelectedData(position).url}"),
                Text("${getSelectedData(position).headline}"),
                Text("${getSelectedData(position).description}"),
              ],
          ),
        )
    );

  }

}
