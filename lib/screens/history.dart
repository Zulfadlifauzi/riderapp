import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:lottie/lottie.dart';

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
        title: const Text(
          'HISTORY',
          style: TextStyle(color: Colors.white),
        ),
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: const Icon(Ionicons.menu_outline),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10),
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black, width: 0.2),
              ),
              width: 50,
              height: 50,
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Ionicons.menu_outline)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 55),
              child: SizedBox(
                width: 300,
                height: 300,
                child: Lottie.asset('assets/lottie/astronaut.json'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 350, left: 130),
              child: Text(
                'Oops no history found...',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
