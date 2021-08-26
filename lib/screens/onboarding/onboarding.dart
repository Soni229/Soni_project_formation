import 'package:flutter/material.dart';
import 'package:soni_news_project/screens/onboarding/signup.dart';
import 'package:soni_news_project/utils/colors.dart';
import 'dart:math';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        body:
            //  Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     // Text("Here we go"),
            //     // SizedBox(height: 10.0),
            //     // Padding(
            //     //   padding: const EdgeInsets.all(10.0),
            //     //   child: TextField(
            //     //     cursorColor: kPrimaryColor,
            //     //   ),
            //     // ),
            //     Container(
            //       padding: EdgeInsets.all(78),
            //       color: Colors.white,
            //       width: 30,
            //       height: 45,
            //     )
            //   ],
            // ),
            Column(children: [
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
          ////////////////////////////////////////////////
          ////////////////////////////////////////////////
          child: Column(
            children: [
              SizedBox(height: height / 9.78),
              /////////////////////////////////////////////////:
              Container(
                //COntainer des ecrits
                height: height / 1.23,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    // topLeft: Radius.elliptical(200, 150),
                    topLeft: Radius.circular(187),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  //border: Border.all(color: Colors.white),
                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /////////////////////////////////////////////
                    Transform.rotate(
                      angle: -1 * pi / 3.60,
                      child: Transform.translate(
                        offset: const Offset(-20, -40),
                        child: Container(
                          //child: Text('Ma joie'),
                          height: 100,
                          width: 160,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              // topLeft: Radius.elliptical(-200, 800),
                              topLeft: Radius.circular(-40),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Transform.rotate(
                      angle: -1 * pi / 4.5,
                      child: Transform.translate(
                        offset: const Offset(-70, -100),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                              // topLeft: Radius.elliptical(-200, 800),
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(00),
                              bottomRight: Radius.circular(0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Transform.rotate(
                      angle: pi / 13,
                      child: Transform.translate(
                        offset: const Offset(-42, -60),
                        child: Container(
                          width: 400,
                          height: 100,
                          //transform: Matrix4.rotationZ(0.3),
                          transformAlignment: Alignment.center,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/logo.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    // Container(
                    //   height: 100,
                    //   width: 80,
                    //   decoration: BoxDecoration(
                    //       border: Border.all(color: Colors.white),
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.all(Radius.circular(40))),
                    // ),
                    SizedBox(height: 2),
                    Container(
                        child: Text(
                      "Welcome to",
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    )),
                    Container(
                      child: Text(
                        'YouNews',
                        style: TextStyle(
                          fontSize: 80,
                        ),
                      ),
                    ),
                    Container(
                      child: Text("The application that offers"),
                    ),
                    Container(
                      child: Text(" news tailored for you."),
                    ),
                    Container(
                      child: Text("Tell us what you like to road."),
                    ),
                    Container(
                      child: Text("we'll take care of the rest"),
                    ),
                    SizedBox(height: 15),
                    TextButton(
                      onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()))
                      },
                      child: Container(
                          width: 150,
                          height: 30,
                          alignment: Alignment.center,
                          child: Text(
                            "Get Started",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ]));
  }
}
