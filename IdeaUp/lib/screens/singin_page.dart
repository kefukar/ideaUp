import 'package:femup/widgets/bg.dart';
import 'package:femup/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SinginPage extends StatefulWidget {
  @override
  createState() => _SinginPage();
  static String routeName = '/singinpage';
}

class _SinginPage extends State<SinginPage> {
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
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => LoginPage()));
                  },

                  // textColor: Colors.white,
                  // padding: const EdgeInsets.all(8.0),
                  //splashColor: Colors.red,
                  child: Text(
                    'CREATE',
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
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(
              height: s.height / 10.72,
            ),
            Expanded(
              flex: 22,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 8, 8, 8),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'FULL NAME',
                        style: TextStyle(
                            fontSize: s.width / 29.57, color: Colors.white),
                      ),
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
                        //hintText: 'Example Name'
                      ),
                      //keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: s.width / 23, color: Colors.grey[700]),
                    ),
                  ),
                  SizedBox(
                    height: s.height / 45.72,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 8, 8, 8),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'E-MAIL ADRESS',
                        style: TextStyle(
                            fontSize: s.width / 29.57, color: Colors.white),
                      ),
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
                    height: s.height / 45.72,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 8, 8, 8),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'PASSWORD',
                        style: TextStyle(
                            fontSize: s.width / 29.57, color: Colors.white),
                      ),
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
                        //hintText: '**********'
                      ),
                      style: TextStyle(
                          fontSize: s.width / 23, color: Colors.grey[700]),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(
                    height: s.height / 45.72,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(60, 8, 8, 8),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'AGE                                                                    ',
                        style: TextStyle(
                            fontSize: s.width / 29.57, color: Colors.white),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(90.0, 0.0, 0.0, 0.0),
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            height: s.height / 16.72,
                            width: s.width / 6.2,
                            child: TextField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  hintText: 'DD'),
                              style: TextStyle(
                                  fontSize: s.width / 21.5,
                                  color: Colors.grey[700]),
                              //obscureText: true,
                              textAlign: TextAlign.justify,
                              textAlignVertical: TextAlignVertical.bottom,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                          child: Container(
                            height: s.height / 16.72,
                            width: s.width / 6.2,
                            child: TextField(
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  hintText: 'MM'),
                              style: TextStyle(
                                  fontSize: s.width / 21.5,
                                  color: Colors.grey[700]),
                              //obscureText: true,
                              textAlign: TextAlign.justify,
                              textAlignVertical: TextAlignVertical.bottom,
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ),
                        Container(
                          height: s.height / 16.72,
                          width: s.width / 5.3,
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                hintText: 'YYYY'),
                            style: TextStyle(
                                fontSize: s.width / 21.5,
                                color: Colors.grey[700]),
                            //obscureText: true,
                            textAlign: TextAlign.justify,
                            textAlignVertical: TextAlignVertical.bottom,
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: s.height / 45.72,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
                        child: Container(
                          margin: EdgeInsets.all(0),
                          width: 28,
                          height: 28,
                          decoration: new BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(10),
                              bottom: Radius.circular(10),
                            ),
                            color: Colors.white,
                          ),
                          child: Checkbox(
                            tristate: true,
                            value: false,
                            onChanged: (bool newValue) {
                              setState(() {});
                            },
                            activeColor: Colors.white,
                            checkColor: Colors.pink,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(1),
                          child: MaterialButton(
                            onPressed: () {},

                            textColor: Colors.white,
                            padding: const EdgeInsets.all(14.0),
                            //splashColor: Colors.red,
                            child: Text(
                              'I agree to the Terms of Service and Privacy Policy',
                              style: TextStyle(fontSize: s.width / 29.5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 10.0, 180.0, 0.0),
                    child: Buttons("Create", s.width / 18.25, s.width / 11.25,
                        s.height / 4.8, () {}),
                  ),
                  SizedBox(
                    height: s.height / 45.72,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 30,
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
