import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({Key? key}) : super(key: key);

  @override
  _UpdateScreenState createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Update',
          style: GoogleFonts.staatliches(
              color: Colors.white, letterSpacing: 5, fontSize: 20),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 20, top: 20),
            child: const Text(
              'Check out new update!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              height: 100,
              child: const Text(
                  'orem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur rutrum, urna in sollicitudin pretium, sapien lacus luctus purus, non efficitur felis turpis consectetur nulla. Donec cursus diam eros. s'),
            ),
          )
        ],
      ),
    );
  }
}
