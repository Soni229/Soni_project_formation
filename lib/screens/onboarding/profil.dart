import 'package:flutter/material.dart';
import 'package:soni_news_project/screens/onboarding/signup.dart';
import 'package:soni_news_project/utils/colors.dart';
import 'dart:math';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

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
        children: [
          myContainer("Read articles", "10", width, height),
          SizedBox(height: 25),
          myContainer("Saved offline articles", "8 ", width, height),
          SizedBox(height: 25),
          myContainer("Saved online articles", "5 ", width, height),
          SizedBox(height: 25),
          TextButton(
            onPressed: () {},
            child: Text("Sign in"),
            style: TextButton.styleFrom(
              backgroundColor: Colors.brown,
              padding: EdgeInsets.symmetric(
                  horizontal: width / 2.7, vertical: height / 60),
            ),
          ),
          SizedBox(height: 15),
          TextButton(
            onPressed: () {},
            child: Text("Sign in"),
            style: TextButton.styleFrom(
              backgroundColor: Colors.brown,
              padding: EdgeInsets.symmetric(
                  horizontal: width / 2.7, vertical: height / 60),
            ),
          )
        ],
      ),
    ));
  }

  Container myContainer(String title, String nbr, double width, double height) {
    return Container(
      width: width / 0.5,
      height: height / 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.grey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Text("$title",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(width: width / 3),
          Container(
              child: Text(
            "$nbr",
            style: TextStyle(fontSize: 40, color: Colors.redAccent),
          )),
        ],
      ),
    );
  }
}
