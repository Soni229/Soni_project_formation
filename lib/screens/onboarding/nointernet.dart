import 'package:flutter/material.dart';
import 'package:soni_news_project/screens/onboarding/signup.dart';
import 'package:soni_news_project/utils/colors.dart';
import 'dart:math';



class Nointernet extends StatelessWidget {
  const Nointernet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 150, horizontal: width / 15),
        color: Colors.black12,
        width: width,
        height: height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(
                "article1.",
                width: 600,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                child: Text("No internet connection",
                    style: TextStyle(fontSize: 25))),
            SizedBox(height: 10),
            Container(
                alignment: Alignment.centerLeft,
                child: Text(
                    "Please check your internet connection and try again",
                    style: TextStyle(fontSize: 14))),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Text("Try again"),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                backgroundColor: Colors.brown,
                padding: EdgeInsets.symmetric(
                    horizontal: width / 7, vertical: height / 75),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Text("offline articles"),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                backgroundColor: Colors.brown,
                padding: EdgeInsets.symmetric(
                    horizontal: width / 10, vertical: height / 75),
              ),
            )
          ],
        ),
      ),
    );
  }
}
