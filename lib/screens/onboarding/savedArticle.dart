import 'package:flutter/material.dart';
import 'package:soni_news_project/screens/onboarding/signup.dart';
import 'package:soni_news_project/utils/colors.dart';
import 'dart:math';
import 'package:soni_news_project/data/articles.dart';

class SavedArticle extends StatelessWidget {
  const SavedArticle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width / 0.6,
                height: height / 6,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                //   child: Row(
                //     children: [
                //       Container(
                //           // child: Image.network(article2.urlToImage,
                //           //     width: 100, height: 100, fit: BoxFit.cover),
                //           ),
                //       Container(
                //         child: Column(
                //           children: [
                //             Container(
                //               color: Colors.amber,
                //               child: Text(article2.description),
                //             ),
                //             Row(
                //               children: [
                //                 IconButton(
                //                     onPressed: () {},
                //                     icon: Icon(Icons.ten_k_rounded,
                //                         color: Colors.brown)),
                //                 IconButton(
                //                     onPressed: () {},
                //                     icon: Icon(Icons.search, color: Colors.brown)),
                //                 Text('article2.publishedAt'),
                //               ],
                //             )
                //           ],
                //         ),
                //       )
                //     ],
                //   ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
