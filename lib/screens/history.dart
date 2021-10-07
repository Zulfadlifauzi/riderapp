import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:riderapp/widgets/drawer_tab_navigator.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'HISTORY',
          style: GoogleFonts.staatliches(
              color: Colors.white, letterSpacing: 5, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Container(
          child: Column(
            children: [
              Column(
                children: [
                  const Divider(
                    thickness: 1,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(Ionicons.wallet_outline),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'h62j-k22k',
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 220),
                        child: Text('RM45'),
                      ),
                      const Divider(),
                    ],
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(Ionicons.location_outline),
                      ),
                      Column(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(right: 40, top: 20),
                            child: Text(
                              'Pick up',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.0),
                            child: Text('Pizza Hut \naeon shah alam'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 15, top: 20),
                            child: Text(
                              'Dropped off',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 1),
                            child: Text('Menara U'),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                ],
              ),
            ],
          ),
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(color: Colors.white),
        ),
      ),
    );
  }
}
