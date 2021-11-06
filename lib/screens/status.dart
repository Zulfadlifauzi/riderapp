import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riderapp/widgets/drawer_tab_navigator.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  _StatusScreenState createState() => _StatusScreenState();
}

var _activeStatus = false;
var _statusUpdate = false;

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'STATUS',
          style: GoogleFonts.staatliches(
              color: Colors.white, letterSpacing: 5, fontSize: 20),
        ),
      ),
      drawer: const DrawerTab(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 1.0),
              Text(
                _activeStatus ? 'Youre online' : 'Youre offline',
                style: const TextStyle(fontSize: 20),
              ),
              const Divider(),
              const SizedBox(height: 5),
              Container(
                child: _appearStatus(),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  width: 370,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: TextButton(
                      onPressed: () {
                        setState(() {
                          _activeStatus = !_activeStatus;
                          _statusUpdate = !_statusUpdate;
                        });
                      },
                      child: _toggleReady()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

_appearStatus() {
  if (_statusUpdate) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Location',
          style: TextStyle(
              fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w300),
        ),
        Text('Shah Alam seksyen 13'),
        SizedBox(
          height: 10,
        ),
        Text(
          'Total active order',
          style: TextStyle(
              fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w300),
        ),
        Text('102 Orders'),
        SizedBox(
          height: 10,
        ),
        Text(
          'Order nearest you',
          style: TextStyle(
              fontSize: 20, color: Colors.grey, fontWeight: FontWeight.w300),
        ),
        Text('32 Orders'),
      ],
    );
  } else {
    return Container();
  }
}

_toggleReady() => Text(
      _activeStatus ? 'Stop' : 'Start',
      style: const TextStyle(color: Colors.white),
    );
