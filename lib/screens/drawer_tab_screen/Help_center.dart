import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HelpCenterScreen extends StatefulWidget {
  const HelpCenterScreen({Key? key}) : super(key: key);

  @override
  _CustomerServiceScreenState createState() => _CustomerServiceScreenState();
}

class _CustomerServiceScreenState extends State<HelpCenterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Customer Service',
          style: GoogleFonts.staatliches(
              color: Colors.white, letterSpacing: 5, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'How we can assist you?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            decoration: const BoxDecoration(color: Colors.white70),
            width: double.infinity,
            height: 45,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 10),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        'Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(thickness: 1),
          Container(
            decoration: const BoxDecoration(color: Colors.white70),
            width: double.infinity,
            height: 45,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 10),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        'Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(thickness: 1),
          Container(
            decoration: const BoxDecoration(color: Colors.white70),
            width: double.infinity,
            height: 45,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 10),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        'Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(thickness: 1),
          Container(
            decoration: const BoxDecoration(color: Colors.white70),
            width: double.infinity,
            height: 45,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 10),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        'Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(thickness: 1),
          Container(
            decoration: const BoxDecoration(color: Colors.white70),
            width: double.infinity,
            height: 45,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 12, left: 10),
                  child: Row(
                    children: const <Widget>[
                      Text(
                        'Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(thickness: 1)
        ],
      ),
    );
  }
}
