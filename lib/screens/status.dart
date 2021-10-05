// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:riderapp/widgets/drawer_tab_navigator.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'STATUS',
          style: GoogleFonts.staatliches(
              color: Colors.white, letterSpacing: 5, fontSize: 20),
        ),
        leading: IconButton(
          onPressed: () {
            DrawerTab();
          },
          icon: const Icon(Ionicons.menu_outline),
        ),
      ),
      drawer: DrawerTab(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 1.0),
              Text(
                'Youre online',
                style: TextStyle(fontSize: 20),
              ),
              Divider(),
              SizedBox(height: 5),
              Text(
                'Location',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300),
              ),
              Text('Shah Alam seksyen 13'),
              SizedBox(height: 10),
              Text(
                'Total active order',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300),
              ),
              Text('102 Orders'),
              SizedBox(height: 10),
              Text(
                'Order nearest you',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300),
              ),
              Text('32 Orders'),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 370,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Stop',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
