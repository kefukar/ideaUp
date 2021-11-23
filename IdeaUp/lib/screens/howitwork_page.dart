import 'package:femup/widgets/bg.dart';
import 'package:femup/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class HowItWorkPage extends StatefulWidget {
  @override
  createState() => _HowItWorkPage();
  static String routeName = '/howitworkpage';
}

class _HowItWorkPage extends State<HowItWorkPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.bottomLeft,
                height: s.height / 19,
                child: Text(
                  "IDEA UP",
                  style:
                      TextStyle(color: Colors.white, fontSize: s.width / 14.92),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerRight,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },

                  textColor: Colors.white,
                  padding: const EdgeInsets.all(8.0),
                  //splashColor: Colors.red,
                  child: Text(
                    '',
                    style: TextStyle(fontSize: s.width / 29.5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          decoration: boxDecorationBG(),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: s.height / 22.72,
                ),
              ),
              Expanded(
                flex: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(18.0, 32, 18, 18),
                          child: Text(
                            'Idea Up is the safest and most efficient way for human to turn their ideas into money.                                                           ',
                            style: TextStyle(
                                fontSize: s.width / 22.1, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: s.height / 30.8,
                    ),
                    Expanded(
                      flex: 8,
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Image(
                              height: s.height / 1.5,
                              //width: 841,
                              image:
                                  AssetImage('lib/assets/images/emma_idea.png'),
                            ),
                          ),
                          Expanded(
                            flex: 8,
                            child: Column(
                              children: [
                                Image(
                                  height: s.height / 1.7,
                                  //width: 681,
                                  image: AssetImage(
                                      'lib/assets/images/Phone_Dollars.png'),
                                ),
                                Container(
                                  child: Buttons("Continue", s.width / 19.75,
                                      s.width / 11.25, s.height / 4.8, () {}),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(0),
                    ),
                    //centerSlice: new Rect.fromLTWH(50.0, 50.0,0,0),
                    //shape: BoxShape.values(top:2),
                    //border: Border.all(width: 1.0, color: Colors.white),
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
