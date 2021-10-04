import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lottie/lottie.dart';
import 'package:riderapp/models/order.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final _pageController = PageController(viewportFraction: 0.877);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'HISTORY',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Ionicons.menu_outline),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
        child: Container(
          child: Column(
            children: [
              Column(
                children: [
                  Divider(
                    thickness: 1,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Icon(Ionicons.wallet_outline),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'h62j-k22k',
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 220),
                        child: Text('RM45'),
                      ),
                      Divider(),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
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
                  Divider(
                    thickness: 1,
                  ),
                ],
              ),
            ],
          ),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.white),
        ),
      ),
    );
  }
}
