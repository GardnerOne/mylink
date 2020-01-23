import 'package:flutter/material.dart';
import 'main.dart';

class TicketPage extends StatefulWidget {
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  static final double _liveBarHeight = 90.0;

  Widget _liveBar(String time) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Image.asset(
            'assets/nirailways.png',
            height: _liveBarHeight,
          ),
          Expanded(
            child: Container(
              height: _liveBarHeight,
              color: MyApp.backgroundAlt,
              child: Center(
                child: Text(
                  time,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 70.0,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _currentTimeBox(String title, String data) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            color: MyApp.text,
            fontSize: 12.0,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 8.0),
          width: 65.0,
          height: 40.0,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(4.0),
            ),
            boxShadow: [
              BoxShadow(
                color: MyApp.backgroundDark,
                offset: const Offset(-2.0, -2.0),
              ),
              BoxShadow(
                color: MyApp.background,
                offset: const Offset(0.0, 0.0),
                spreadRadius: 1.0,
                blurRadius: 1.0,
              ),
            ],
          ),
          child: Center(
            child: Text(
              data,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _secondsBox() {
    return Column(
      children: <Widget>[
        Text(
          'Seconds',
          style: TextStyle(
            color: MyApp.text,
            fontSize: 12.0,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 8.0),
          width: 65.0,
          height: 40.0,
          child: Center(
            child: Text(
              (60 - DateTime.now().second).toString(),
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _timeDetails() {
    double _spacer = 20.0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _currentTimeBox('Days', DateTime.now().day.toString()),
        SizedBox(width: _spacer),
        _currentTimeBox('Hours', DateTime.now().hour.toString()),
        SizedBox(
          width: _spacer,
        ),
        _currentTimeBox('Minutes', DateTime.now().minute.toString()),
        SizedBox(
          width: _spacer,
        ),
        _secondsBox(),
      ],
    );
  }

  Widget _bigInfo() {
    return Text('hello');
  }

  String getCurrentTime() {
    return DateTime.now().toIso8601String().substring(11, 16);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: MyApp.backgroundAlt,
        title: Text('Adult Rail Monthly'),
        elevation: 1.0,
      ),
      body: Column(
        children: <Widget>[
          _liveBar(getCurrentTime()),
          _timeDetails(),
          SizedBox(height: 10.0,),
          Text(
            'Activated on Tue 3 Sep 2019 at 07:07',
            style: TextStyle(
              fontSize: 17.0,
            ),
          ),
          _bigInfo(),
        ],
      ),
      backgroundColor: MyApp.background,
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
              height: 30.0,
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
    );
  }
}
