import 'package:flutter/material.dart';
import 'main.dart';

class TicketPage extends StatefulWidget {
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyApp.background_alt,
        title: Text('Adult Rail Monthly'),
        elevation: 1.0,
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
