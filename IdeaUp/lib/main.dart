import 'package:femup/screens/home.dart';
import 'package:femup/screens/howitwork_page.dart';
import 'package:femup/screens/login_page.dart';
import 'package:femup/screens/singin_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// void main() {
//   runApp(MyApp());
// }
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  static String routeName = '/';
  void initState() {}

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Idea Up',
      theme: ThemeData(
        disabledColor: Colors.white,
        unselectedWidgetColor: Colors.white,
        fontFamily: "Gill",
      ),
      initialRoute: '/',
      routes: {
        "/": (contex) => HomePage(),
        "/loginpage": (contex) => LoginPage(),
        "/singinpage ": (contex) => SinginPage(),
        "/howitworkpage": (contex) => HowItWorkPage(),
      },
      onUnknownRoute: (RouteSettings settings) =>
          MaterialPageRoute(builder: (context) => HomePage()),
      //home: HomePage(),
    );
  }
}
