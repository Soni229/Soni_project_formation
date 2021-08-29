import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:soni_news_project/screens/onboarding/signup.dart';
import 'package:soni_news_project/utils/colors.dart';
import 'dart:math';
import 'package:soni_news_project/data/articles.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber.shade400),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: ListView(
            children: [
              Container(
                height: height / 14,
                width: width / 1.5,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: width / 1.7,
                        child: Text(article1.title),
                      ),
                      ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          child: Image.asset(
                            "assets/images/default_cover.png",
                            width: width / 7,
                            fit: BoxFit.fill,
                          ))
                    ]),
              ),
              Container(
                child: Text(
                  DateFormat('yyyy-MM-dd – kk:mm').format(article1.publishedAt),
                  style: TextStyle(color: Colors.brown),
                ),
              ),
              SizedBox(height: 6),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: Image.network(
                  article1.urlToImage,
                  fit: BoxFit.cover,
                  height: height / 2.5,
                  width: height / 0.2,
                ),
              ),
              SizedBox(height: 5),
              Container(
                child: Text(article1.content),
              ),
              SizedBox(height: height / 5.5),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                TextButton(
                  onPressed: () {},
                  child: Text("Check it over the web"),
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        vertical: height / 40, horizontal: width / 30),
                    backgroundColor: Colors.brown.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.book),
                  color: Colors.red,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.share),
                  color: Colors.red,
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
