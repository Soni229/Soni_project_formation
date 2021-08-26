import 'package:flutter/material.dart';
import 'package:soni_news_project/screens/onboarding/signin.dart';
import 'package:soni_news_project/utils/colors.dart';
import 'dart:math';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            // Container de l'entete
            color: Colors.red,
            width: 500,
            height: 40,
          ),
          ///////////////////////////////////////////
          Container(
            //container base
            padding: EdgeInsets.all(10),
            color: Colors.greenAccent,
            width: width,
            height: height / 1.06,
            child: Container(
                width: width / 1.01,
                height: height / 1.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Column(children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Form(
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 40),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              TextFormField(
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  labelText: "  Name",
                                  border: OutlineInputBorder(),
                                ),
                                validator: (val) =>
                                    val!.isEmpty ? 'Enter the name' : null,
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  labelText: "  Email",
                                  border: OutlineInputBorder(),
                                ),
                                validator: (val) =>
                                    val!.isEmpty ? 'Enter the Email' : null,
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  labelText: "  Password",
                                  border: OutlineInputBorder(),
                                ),
                                validator: (pass) =>
                                    (pass!.isEmpty || pass.length < 6)
                                        ? 'Enter the Password (6 caracters)'
                                        : null,
                                obscureText: true,
                              ),
                              SizedBox(height: 10),
                              TextFormField(
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  labelText: "Repeat password",
                                  border: OutlineInputBorder(),
                                ),
                                validator: (val) {},
                                obscureText: true,
                              )
                            ],
                          ))),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        height: 40,
                        child: Text(
                          "Sign up",
                          style: TextStyle(fontSize: 25),
                        ),
                      )),
                  SizedBox(height: 15),
                  TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(15),
                        primary: Colors.white10,
                      ),
                      onPressed: () {},
                      child: Text(
                        "Sign up via Facebook",
                        style: TextStyle(fontSize: 25),
                      )),
                  SizedBox(height: 15),
                  TextButton(
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.all(15),
                          //primary: Colors.white30,
                          backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Text(
                        "Sign up via Gmail",
                        style: TextStyle(fontSize: 25),
                      )),
                  Row(
                    children: [
                      SizedBox(width: 12),
                      InkWell(
                          child: Container(
                              child: Text("Aready have account ?",
                                  style: TextStyle(color: Colors.green))),
                          onTap: () {}),
                      SizedBox(width: 100),
                      InkWell(
                        child: Container(
                            child: Text("Sign in",
                                style: TextStyle(color: Colors.green))),
                        onTap: () => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Signin()))
                        },
                      ),
                    ],
                  )
                ]
                    ////////////////////////////////////////////////////
                    )),
          ),
        ]),
      ), ////////////////////////////////
    );
  }
}
