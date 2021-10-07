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
    );
  }
}
