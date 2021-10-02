// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
        title: const Text(
          'WORK',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Ionicons.menu_outline),
        ),
      ),
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
                    fontWeight: FontWeight.w600),
              ),
              Text('Shah Alam seksyen 13'),
              SizedBox(height: 10),
              Text(
                'Total active order',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600),
              ),
              Text('102 Orders'),
              SizedBox(height: 10),
              Text(
                'Order nearest you',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.w600),
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
                      'Start',
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
