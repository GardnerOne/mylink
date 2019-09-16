import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'ticket.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final Color background = Color(0xffcbcbcb);
  static final Color backgroundAlt = Color(0xffbbbbbb);
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
      theme: ThemeData(fontFamily: 'Helvetica Neue'),
      debugShowCheckedModeBanner: false,
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
    double _buttonHeight = 90.0;
    double _ticketWidth = 40.0;
    double _buttonTextSize = 23.0;
    double _buttonSmallTextSize = 13.0;
    double _buttonIconSpacer = 18.0;

    Widget _topBanner = Container(
      color: MyApp.backgroundDark,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Important Payment information - Find out more",
              style: TextStyle(
                color: MyApp.light,
                fontSize: 13.0,
                fontWeight: FontWeight.w400,
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
      padding: EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 10.0),
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

    Widget _buyButton = FlatButton(
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(
            color: MyApp.primary,
            borderRadius: new BorderRadius.all(Radius.circular(5.0)),
          ),
          child: SizedBox(
            height: _buttonHeight,
            child: FractionallySizedBox(
              widthFactor: 0.98,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: _buttonIconSpacer,
                    ),
                    Image.asset(
                      'assets/ticket.png',
                      width: _ticketWidth,
                    ),
                    SizedBox(
                      width: _buttonIconSpacer,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Buy a Ticket",
                          style: TextStyle(
                            color: MyApp.light,
                            fontSize: _buttonTextSize,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          "Available for NI Railways and Metro",
                          style: TextStyle(
                            color: MyApp.light,
                            fontSize: _buttonSmallTextSize,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));

    Widget _currentTicket = FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => TicketPage())
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: MyApp.light,
          borderRadius: new BorderRadius.all(Radius.circular(5.0)),
        ),
        child: SizedBox(
          height: _buttonHeight,
          child: FractionallySizedBox(
            widthFactor: 0.98,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: _buttonIconSpacer,
                  ),
                  Image.asset(
                    'assets/ticket_dark.png',
                    width: _ticketWidth,
                  ),
                  SizedBox(
                    width: _buttonIconSpacer,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Your Current Ticket",
                        style: TextStyle(
                          color: MyApp.text,
                          fontSize: _buttonTextSize,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        "Your most recently activated ticket",
                        style: TextStyle(
                          color: MyApp.text,
                          fontSize: _buttonSmallTextSize,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    Widget _ticketWallet = FlatButton(
      onPressed: () {},
      child: Container(
        decoration: BoxDecoration(
          color: MyApp.light,
          borderRadius: new BorderRadius.all(Radius.circular(5.0)),
        ),
        child: SizedBox(
          height: _buttonHeight,
          child: FractionallySizedBox(
            widthFactor: 0.98,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: _buttonIconSpacer,
                  ),
                  Image.asset(
                    'assets/wallet.png',
                    width: _ticketWidth,
                  ),
                  SizedBox(
                    width: _buttonIconSpacer,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Ticket Wallet",
                        style: TextStyle(
                          color: MyApp.text,
                          fontSize: _buttonTextSize,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(
                        "Tickets ready to be activated",
                        style: TextStyle(
                          color: MyApp.text,
                          fontSize: _buttonSmallTextSize,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: MyApp.background,
        title: Image.asset(
          "assets/mlink_title.png",
          width: 90.0,
        ),
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (i) {},
        selectedFontSize: 12.0,
        unselectedFontSize: 12.0,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/options.png',
              height: 30.0,
            ),
            title: Text(
              'Options',
              style: TextStyle(color: MyApp.backgroundDark),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/ticket_alt.png',
              height: 33.0,
            ),
            title: Text(
              'Ticket Wallet',
              style: TextStyle(color: MyApp.backgroundDark),
            ),
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/home.png',
              height: 30.0,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: MyApp.backgroundDark),
            ),
          ),
        ],
      ),
      backgroundColor: MyApp.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _topBanner,
            _heading,
            SizedBox(
              height: 10.0,
            ),
            _buyButton,
            SizedBox(
              height: 8.0,
            ),
            _currentTicket,
            SizedBox(
              height: 8.0,
            ),
            _ticketWallet,
            SizedBox(
              height: 25.0,
            ),
            Image.asset(
              'assets/bottom_icons.png',
              height: 75.0,
            ),
          ],
        ),
      ),
    );
  }
}
