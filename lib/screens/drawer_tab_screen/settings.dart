import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreens extends StatefulWidget {
  const SettingScreens({Key? key}) : super(key: key);

  @override
  _SettingScreensState createState() => _SettingScreensState();
}

class _SettingScreensState extends State<SettingScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(
        'Settings',
        style: GoogleFonts.staatliches(
            color: Colors.white, letterSpacing: 5, fontSize: 20),
      ),
      centerTitle: true,
      backgroundColor: Colors.black,
    ));
  }
}
