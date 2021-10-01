import 'package:flutter/material.dart';

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
            centerTitle: true,
            title: const Text('DELIVERY'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: 'Ongoing',
                ),
                Tab(
                  text: 'Completed',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
