import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:riderapp/auth/login.dart';
import 'package:riderapp/screens/drawer_tab_screen/customer_service.dart';
import 'package:riderapp/screens/drawer_tab_screen/notifications.dart';
import 'package:riderapp/screens/drawer_tab_screen/profile.dart';
import 'package:riderapp/screens/drawer_tab_screen/settings.dart';
import 'package:riderapp/screens/drawer_tab_screen/updates.dart';

class DrawerTab extends StatefulWidget {
  const DrawerTab({Key? key}) : super(key: key);

  @override
  _DrawerTabState createState() => _DrawerTabState();
}

class _DrawerTabState extends State<DrawerTab> {
  final padding = const EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black,
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            buildMenuItem(
              text: 'Profile',
              icon: Ionicons.person_outline,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
              text: 'Settings',
              icon: Ionicons.settings_outline,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                text: 'Customer Service',
                icon: Ionicons.chatbox_outline,
                onClicked: () => selectedItem(context, 2)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                text: 'Updates',
                icon: Icons.update,
                onClicked: () => selectedItem(context, 3)),
            const SizedBox(
              height: 16,
            ),
            const Divider(color: Colors.white, thickness: 5),
            buildMenuItem(
                text: 'Notifications',
                icon: Ionicons.notifications_outline,
                onClicked: () => selectedItem(context, 4)),
            const SizedBox(
              height: 295,
            ),
            buildMenuItem(
                text: 'Sign out',
                icon: Ionicons.log_out_outline,
                onClicked: () => selectedItem(context, 5))
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  const color = Colors.white;
  final hoverColor = Colors.white70;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: const TextStyle(color: color)),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const ProfileScreen()));
      break;
    case 1:
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const SettingScreens()));
      break;
    case 2:
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const CustomerServiceScreen()));
      break;
    case 3:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const UpdateScreen()));
      break;
    case 4:
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const NotificationScreens()));
      break;
    case 5:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const LoginScreen()));
      break;
  }
}
