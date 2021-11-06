import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riderapp/widgets/drawer_tab_navigator.dart';

class NotificationScreens extends StatefulWidget {
  const NotificationScreens({Key? key}) : super(key: key);

  @override
  _NotificationScreensState createState() => _NotificationScreensState();
}

class _NotificationScreensState extends State<NotificationScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'NOTIFICATIONS',
          style: GoogleFonts.staatliches(
              color: Colors.white, letterSpacing: 5, fontSize: 20),
        ),
      ),
      drawer: const DrawerTab(),
      body: Column(
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(color: Colors.white70),
              width: double.infinity,
              height: 45,
              child: _column1()),
          const Divider(thickness: 1),
          Container(
              decoration: const BoxDecoration(color: Colors.white70),
              width: double.infinity,
              height: 45,
              child: _column1()),
          const Divider(thickness: 1),
          Container(
              decoration: const BoxDecoration(color: Colors.white70),
              width: double.infinity,
              height: 45,
              child: _column1()),
          const Divider(thickness: 1),
          Container(
              decoration: const BoxDecoration(color: Colors.white70),
              width: double.infinity,
              height: 45,
              child: _column1()),
          const Divider(thickness: 1),
          Container(
              decoration: const BoxDecoration(color: Colors.white70),
              width: double.infinity,
              height: 45,
              child: _column1()),
          const Divider(thickness: 1)
        ],
      ),
    );
  }
}

_column1() => Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 12, left: 10),
          child: Row(
            children: <Widget>[
              Column(
                children: const [
                  Text(
                    'Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
