import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/news_data.dart';

import 'news_detail.dart';


class NewsList extends StatelessWidget{

  List<NewsData> items = getNewsData();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        home: Scaffold(
            body:ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  NewsData eachItem = items[index];
                  print(eachItem);
                return GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewsDetail(position: index,)),
                    );
                    print(index);
                  },
                  child: NewsItem(data: eachItem,),
                );
              },
            )
            )
    );

  }
}


class NewsItem extends StatelessWidget{

  NewsItem({super.key, required this.data});

  NewsData data;

  @override
  Widget build(BuildContext context) {

    return SizedBox(
          height: 100,
          child: Row(
            children: [
              Image.asset(data.url),
          Column(
              children: [
              Text(data.headline),
                Text(data.description)
          ],
                )

                ],
          ),
    );
  }

}