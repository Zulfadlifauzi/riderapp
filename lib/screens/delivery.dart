// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lottie/lottie.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({Key? key}) : super(key: key);

  @override
  _DeliveryScreenState createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Ionicons.menu_outline),
            ),
            centerTitle: true,
            title: const Text(
              'DELIVERY',
              style: TextStyle(color: Colors.white),
            ),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: const [
                Tab(
                  text: 'Ongoing',
                ),
                Tab(
                  text: 'Completed',
                ),
              ],
            ),
          ),
          // ignore: avoid_unnecessary_containers
          body: TabBarView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: SafeArea(
                  child: ListView(
                    children: <Widget>[
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: <Widget>[
                                Divider(
                                  thickness: 1,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(Ionicons.person_outline),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text('Ahmad Irfan'),
                                )
                              ],
                            ),
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(Ionicons.chatbox_ellipses_outline),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  '"Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit, \nsed do eiusmod tempor incididunt \nut labore et dolore magna aliqua."',
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )
                            ],
                          ),
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
                                padding: const EdgeInsets.only(left: 250),
                                child: Text('RM45'),
                              ),
                              Divider(),
                            ],
                          ),
                          Divider(
                            thickness: 1,
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
                                    padding: EdgeInsets.only(right: 40),
                                    child: Text(
                                      'Pick up',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.0),
                                    child: Text('Pizza Hut \naeon shah alam'),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: 15, top: 20),
                                    child: Text(
                                      'Dropped off',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 1),
                                    child: Text('Menara U'),
                                  )
                                ],
                              ),
                              Divider(),
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          ),
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
                                  'Dropped off',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: SizedBox(
                        width: 300,
                        height: 300,
                        child: Lottie.asset('assets/lottie/astronaut.json'),
                      ),
                    ),
                  ),
                  Text(
                    'No completed task yet..',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
