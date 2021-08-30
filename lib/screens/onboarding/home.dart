import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:soni_news_project/screens/onboarding/business.dart';
import 'package:soni_news_project/screens/onboarding/description.dart';
import 'package:soni_news_project/screens/onboarding/entaintainment.dart';
import 'package:soni_news_project/screens/onboarding/general.dart';
import 'package:soni_news_project/screens/onboarding/profil.dart';
import 'package:soni_news_project/screens/onboarding/savedArticle.dart';
import 'package:soni_news_project/screens/onboarding/signup.dart';
import 'package:soni_news_project/utils/colors.dart';
import 'dart:math';
import 'package:soni_news_project/data/articles.dart';
import 'package:soni_news_project/utils/theme.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _SavedArticleState createState() => _SavedArticleState();
}

class _SavedArticleState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff292e42),
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Color(0xff292e42),
          appBar: AppBar(
            actions: [
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                width: width / 1.3,
                height: height / 15,
                decoration: BoxDecoration(
                    color: Color(0xff5c6175),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Form(
                    child: Container(
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      fillColor: Color(0xff5c6175),
                      labelText: "Search something",
                      // border: OutlineInputBorder(
                      // borderRadius:
                      //     BorderRadius.all(Radius.circular(40),
                      //     ),
                      //         ),
                    ),
                  ),
                )),
              ),
              SizedBox(width: 10),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child:
                      IconButton(onPressed: () {}, icon: Icon(Icons.search))),
            ],
            bottom: TabBar(
              labelStyle:
                  TextStyle(fontSize: 10.55, fontWeight: FontWeight.bold),
              tabs: [
                Tab(text: "BUSINESS"),
                Tab(text: "ENTERTAINMENT"),
                Tab(text: "GENERAL"),
              ],
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(5),
              child: TabBarView(
                children: [Business(), Entertainment(), General()],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
