import 'package:femup/screens/howitwork_page.dart';
import 'package:femup/screens/login_page.dart';
import 'package:femup/widgets/bg.dart';
import 'package:femup/widgets/buttons.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          decoration: boxDecorationBG(),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                ),
              ),
              Stack(
                children: [
                  Container(
                    width: s.width / 1.6,
                    height: s.height / 3.76,
                  ),
                  Center(
                    child: Text(
                      "IDEA UP",
                      style: TextStyle(
                          color: Colors.white, fontSize: s.width / 8.92),
                    ),
                  ),
                  Positioned(
                    top: s.height / 10.50,
                    left: s.width / 3.5,
                    child: Text(
                      "Your Idea,",
                      style: TextStyle(
                          color: Colors.white, fontSize: s.width / 15.92),
                    ),
                  ),
                  Positioned(
                    top: s.height / 7.0,
                    left: s.width / 2.3,
                    child: Center(
                      child: Text(
                        "Your Money.",
                        style: TextStyle(
                            color: Colors.white, fontSize: s.width / 15.92),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 6,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(40.0, 80.0, 40.0, 20.0),
                      child: Buttons(
                        "Get Started",
                        s.width / 17.25,
                        s.height / 17.0,
                        s.width / 2.13,
                        () {},
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      textColor: Colors.white,
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 40),
                      splashColor: Colors.red,
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: s.width / 17.25),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: s.height / 11,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.23),
                      spreadRadius: 10,
                      blurRadius: 30,
                      offset: Offset(0, 0.5), // changes position of shadow
                    ),
                  ],
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Colors.blue[900],
                      Colors.purple[800],
                    ],
                    stops: [
                      0.38,
                      0.96,
                    ],
                  ),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Align(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HowItWorkPage()));
                          },
                          child: Text(
                            'How it works',
                            style: TextStyle(
                              fontSize: s.width / 25.87,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Align(
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Contact Us',
                            style: TextStyle(
                              fontSize: s.width / 25.87,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
