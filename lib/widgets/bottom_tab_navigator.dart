import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:riderapp/constant/constant.dart';
import 'package:riderapp/screens/delivery.dart';
import 'package:riderapp/screens/map.dart';
import 'package:riderapp/screens/notifications.dart';
import 'package:riderapp/screens/status.dart';
import 'package:riderapp/screens/wallet.dart';
import 'package:riderapp/widgets/drawer_tab_navigator.dart';

class BottomTabNavigator extends StatefulWidget {
  const BottomTabNavigator({Key? key}) : super(key: key);

  @override
  _BottomTabNavigatorState createState() => _BottomTabNavigatorState();
}

class _BottomTabNavigatorState extends State<BottomTabNavigator> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    const StatusScreen(),
    const DeliveryScreen(),
    const MapScreen(),
    const NotificationScreens(),
    const WalletScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerTab(),
      body: pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(color: Colors.black),
        selectedItemColor: const Color(0xFF1D1D35),
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
              icon: Icon(Ionicons.checkmark_done), label: 'Status'),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_outlined), label: 'Deliveries'),
          BottomNavigationBarItem(icon: Icon(Icons.map_outlined), label: 'Map'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_active_outlined),
              label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Ionicons.wallet), label: 'Wallet'),
        ],
      ),
    );
  }
}
