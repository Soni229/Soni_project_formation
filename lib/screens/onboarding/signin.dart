import 'package:flutter/material.dart';
import 'package:soni_news_project/screens/onboarding/signup.dart';

class Signin extends StatelessWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                  color: Colors.green,
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 60),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Insert your Email and PassWord to sign in",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                    Form(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            TextFormField(
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              decoration: InputDecoration(
                                fillColor: Colors.green,
                                labelText: "  Username or Email",
                                border: OutlineInputBorder(),
                              ),
                              validator: (val) =>
                                  val!.isEmpty ? 'Username or Email' : null,
                            ),
                            SizedBox(height: 10),
                            TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.green,
                                labelText: "  PassWord",
                                border: OutlineInputBorder(),
                              ),
                              validator: (pass) =>
                                  (pass!.isEmpty || pass.length < 6)
                                      ? 'Enter the Password (6 caracters)'
                                      : null,
                              obscureText: true,
                            ),
                            SizedBox(height: 10),
                            Container(
                              child: Text("Forgot password?",
                                  style: TextStyle(color: Colors.white)),
                            ),
                            SizedBox(height: 1),
                            TextButton(
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.all(15),
                                    primary: Colors.black,
                                    backgroundColor: Colors.white),
                                onPressed: () {},
                                child: Text(
                                  "Sign in",
                                  style: TextStyle(fontSize: 25),
                                )),
                            SizedBox(height: 150),
                            Row(
                              children: [
                                SizedBox(width: 8),
                                InkWell(
                                    child: Container(
                                        child: Text("Don't have account yet ?",
                                            style: TextStyle(
                                                color: Colors.white))),
                                    onTap: () {}),
                                SizedBox(width: 50),
                                InkWell(
                                  child: Container(
                                      child: Text("Sign up",
                                          style:
                                              TextStyle(color: Colors.white))),
                                  onTap: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Signup()))
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
