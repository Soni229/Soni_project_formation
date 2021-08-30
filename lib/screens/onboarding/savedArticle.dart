import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:soni_news_project/screens/onboarding/description.dart';
import 'package:soni_news_project/screens/onboarding/signup.dart';
import 'package:soni_news_project/utils/colors.dart';
import 'dart:math';
import 'package:soni_news_project/data/articles.dart';

class SavedArticle extends StatefulWidget {
  const SavedArticle({Key? key}) : super(key: key);

  @override
  _SavedArticleState createState() => _SavedArticleState();
}

class _SavedArticleState extends State<SavedArticle> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 15),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              myArticle(width, height, article1.urlToImage, article1.title,
                  article1.publishedAt),
              SizedBox(height: height / 28),
              myArticle(width, height, article5.urlToImage, article5.title,
                  article5.publishedAt),
              SizedBox(height: height / 28),
              myArticle(width, height, article4.urlToImage, article4.title,
                  article4.publishedAt),
              SizedBox(height: height / 28),
              myArticle(width, height, article3.urlToImage, article3.title,
                  article3.publishedAt),
              SizedBox(height: height / 28),
              myArticle(width, height, article1.urlToImage, article1.title,
                  article1.publishedAt),
              SizedBox(height: height / 28),
              // myArticle(width, height, article6.urlToImage, article6.title,
              //     article6.publishedAt),
              // SizedBox(height: height / 28),
              // myArticle(width, height, article7.urlToImage, article7.title,
              //     article7.publishedAt),
            ],
          ),
        ),
      ),
    );
  }

  Container myArticle(
      double width, double height, String photo, String title, DateTime date) {
    return Container(
        width: width / 0.3,
        height: height / 5,
        decoration: BoxDecoration(
            color: Colors.green.shade200,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              child: CachedNetworkImage(
                width: width / 3.5,
                height: height / 3,
                imageUrl: "$photo",
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 2),
              child: Column(
                children: [
                  GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(8),
                        width: width / 1.7,
                        height: height / 8,
                        child: Text(
                          "$title",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Description()),
                        );
                      }),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.file_download),
                            color: Colors.red),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.share),
                            color: Colors.red),
                        Text(
                          DateFormat('yyyy-MM-dd – kk:mm').format(date),
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
