import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final Color background = Color(0xffcbcbcb);
  static final Color backgroundDark = Color(0xff7e8082);
  static final Color primary = Color(0xff41938E);
  static final Color light = Color(0xfffefefe);
  static final Color iconDark = Color(0xff252b2f);
  static final Color iconMid = Color(0xffa0a0a0);
  static final Color text = Color(0xff1d1f23);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      theme: ThemeData(fontFamily: 'Roboto'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /*
   * Colour scheme
   * background: #CBCBCB
   * background_dark: #7E8082
   * primary: #41938E
   * light: #FEFEFE
   * icon_dark: #252B2F
   * icon_mid: #A0A0A0
  */

  @override
  Widget build(BuildContext context) {
    Widget _topBanner = Container(
      color: MyApp.backgroundDark,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Important Payment information - Find out more",
              style: TextStyle(
                color: MyApp.light,
                fontSize: 14.0,
              ),
            ),
            Icon(
              FontAwesomeIcons.angleRight,
              color: MyApp.light,
              size: 18.0,
            ),
          ],
        ),
      ),
    );

    Widget _heading = Padding(
      padding: EdgeInsets.fromLTRB(15.0,20.0,15.0,10.0),
      child: Text(
        "Translink bus and rail tickets direct to your mobile phone",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: MyApp.text,
          fontSize: 25.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyApp.background,
        title: Image.asset(
          "assets/mlink_title.png",
          width: 90.0,
        ),
        elevation: 0.0,
      ),
      backgroundColor: MyApp.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _topBanner,
            _heading,
          ],
        ),
      ),
    );
  }
}
