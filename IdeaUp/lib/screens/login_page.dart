import 'package:femup/widgets/bg.dart';
import 'package:femup/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'singin_page.dart';

class LoginPage extends StatefulWidget {
  @override
  createState() => _LoginPage();
  static String routeName = '/loginpage';
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    //debugPrint("$s.width - $s.height");
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  onPressed: () {},
                  child: Text(
                    'LOGIN',
                    style: TextStyle(fontSize: s.width / 29.5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: boxDecorationBG(),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.end,
          //mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 22,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'E-MAIL ADRESS                                                     ',
                      style: TextStyle(
                          fontSize: s.width / 29.57, color: Colors.white),
                    ),
                  ),
                  Container(
                    height: s.height / 16.72,
                    width: s.width / 1.21,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        //hintText: 'exapmle@femup.io'
                      ),
                      //keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: s.width / 23, color: Colors.grey[700]),
                    ),
                  ),
                  SizedBox(
                    height: s.height / 14.72,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'PASSWORD                                                          ',
                      style: TextStyle(
                          fontSize: s.width / 29.57, color: Colors.white),
                    ),
                  ),
                  Container(
                    height: s.height / 16.72,
                    width: s.width / 1.21,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        // hintText: '**********'
                      ),
                      style: TextStyle(
                          fontSize: s.width / 23, color: Colors.grey[700]),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(
                    height: s.height / 14.72,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Buttons(
                        "Login",
                        s.width / 18.81,
                        s.height / 18.4,
                        s.width / 2.58,
                        () {},
                      ),
                      SizedBox(width: s.width / 30),
                      Container(
                        child: MaterialButton(
                          onPressed: () {},
                          // textColor: Colors.white,
                          child: Text(
                            'FORGOT PASSWORD ?',
                            style: TextStyle(fontSize: s.width / 29.57),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: MaterialButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SinginPage()));
                  },
                  textColor: Colors.white,
                  child: Text(
                    'CREATE A NEW ACCOUNT >',
                    style: TextStyle(fontSize: s.width / 29.57),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(0),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
