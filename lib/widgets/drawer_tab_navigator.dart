import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:riderapp/auth/login.dart';
import 'package:riderapp/screens/drawer_tab_screen/Help_center.dart';
import 'package:riderapp/screens/history.dart';
import 'package:riderapp/screens/notifications.dart';
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
              height: 80,
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
                text: 'History',
                icon: Icons.history,
                onClicked: () => selectedItem(context, 1)),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                text: 'Help center',
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
              height: 3620,
            ),
            buildMenuItem(
                text: 'Sign out',
                icon: Ionicons.log_out_outline,
                onClicked: () => selectedItem(context, 4))
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
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const HistoryScreen()));
      break;

    case 2:
      Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const HelpCenterScreen()));
      break;
    case 3:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const UpdateScreen()));
      break;
    case 4:
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const LoginScreen()));
      break;
  }
}
