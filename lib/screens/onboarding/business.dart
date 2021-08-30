import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:soni_news_project/data/articles.dart';
import 'package:soni_news_project/screens/onboarding/signup.dart';
import 'package:soni_news_project/utils/colors.dart';

class Business extends StatelessWidget {
  const Business({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xff292e42),
      body: Column(
        children: [
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: [
                      myBisContainer(
                          height,
                          width,
                          article1.urlToImage,
                          article1.title,
                          article1.author,
                          article1.publishedAt),
                      // myBisContainer(height, width, article2.urlToImage,
                      //     article2.title, article2.author, article2.publishedAt),
                      myBisContainer(
                          height,
                          width,
                          article3.urlToImage,
                          article3.title,
                          article3.author,
                          article3.publishedAt),
                      myBisContainer(
                          height,
                          width,
                          article4.urlToImage,
                          article4.title,
                          article4.author,
                          article4.publishedAt),
                      myBisContainer(
                          height,
                          width,
                          article1.urlToImage,
                          article1.title,
                          article1.author,
                          article1.publishedAt),
                      myBisContainer(
                          height,
                          width,
                          article2.urlToImage,
                          article2.title,
                          article2.author,
                          article2.publishedAt),
                      myBisContainer(
                          height,
                          width,
                          article3.urlToImage,
                          article3.title,
                          article3.author,
                          article3.publishedAt),
                      myBisContainer(height, width, article4.urlToImage,
                          article4.title, article4.author, article4.publishedAt)
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Text("Trending",
                style: TextStyle(color: Color(0xff5c6175), fontSize: 25)),
          ),
          Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  myBusContainer2(height, width, article1.urlToImage,
                      article1.title, article1.publishedAt),
                  myBusContainer2(height, width, article2.urlToImage,
                      article2.title, article2.publishedAt),
                  myBusContainer2(height, width, article3.urlToImage,
                      article3.title, article3.publishedAt),
                  myBusContainer2(height, width, article4.urlToImage,
                      article4.title, article4.publishedAt),
                  myBusContainer2(height, width, article5.urlToImage,
                      article5.title, article5.publishedAt),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding myBisContainer(double height, double width, String photo,
      String title, String autor, DateTime date) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: height / 3,
        width: width / 1.5,
        decoration: BoxDecoration(
            color: Color(0xff5c6175),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: CachedNetworkImage(
                imageUrl: "$photo",
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text("$title", overflow: TextOverflow.ellipsis),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("$autor"),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.book),
                    color: Colors.red),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.share),
                    color: Colors.red),
              ],
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              alignment: Alignment.centerLeft,
              child: Text(DateFormat('yyyy-MM-dd – kk:mm').format(date),
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

Padding myBusContainer2(
    double width, double height, String photo, String title, DateTime date) {
  return Padding(
    padding: EdgeInsets.all(10),
    child: Container(
        width: width / 2.5,
        height: height / 3.7,
        decoration: BoxDecoration(
            color: Color(0xff5c6175),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              child: CachedNetworkImage(
                width: width / 8,
                height: height / 3.7,
                imageUrl: "$photo",
                placeholder: (context, url) =>
                    Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Icon(Icons.error),
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    GestureDetector(
                      child: Expanded(
                        child: Container(
                          padding: EdgeInsets.all(4),
                          width: width / 2,
                          height: height / 6,
                          child: Text(
                            "$title",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.book),
                                  color: Colors.red,
                                  iconSize: 20),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.share),
                                  color: Colors.red,
                                  iconSize: 20),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  DateFormat('yyyy-MM-dd – kk:mm').format(date),
                                  style: TextStyle(
                                      color: Colors.blue, fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        )),
  );
}
