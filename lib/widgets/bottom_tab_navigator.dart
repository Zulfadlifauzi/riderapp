import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:riderapp/constant/constant.dart';
import 'package:riderapp/screens/delivery.dart';
import 'package:riderapp/screens/history.dart';
import 'package:riderapp/screens/home.dart';
import 'package:riderapp/screens/wallet.dart';

class BottomTabNavigator extends StatefulWidget {
  const BottomTabNavigator({Key? key}) : super(key: key);

  @override
  _BottomTabNavigatorState createState() => _BottomTabNavigatorState();
}

class _BottomTabNavigatorState extends State<BottomTabNavigator> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    const HomeScreen(),
    const DeliveryScreen(),
    const HistoryScreen(),
    const WalletScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(color: kPrimaryColor),
        selectedItemColor: const Color(0xFFFF7F50),
        unselectedItemColor: kContentColorDarkTheme.withOpacity(0.32),
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_outlined), label: 'Deliveries'),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(icon: Icon(Ionicons.wallet), label: 'Wallet'),
        ],
      ),
    );
  }
}
