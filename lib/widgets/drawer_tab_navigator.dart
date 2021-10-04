import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
            buildMenuItem(text: 'Settings', icon: Ionicons.settings_outline),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(text: 'Profile', icon: Ionicons.person_outline),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(
                text: 'Customer Service', icon: Ionicons.chatbox_outline),
            const SizedBox(
              height: 16,
            ),
            buildMenuItem(text: 'Updates', icon: Icons.update),
            const SizedBox(
              height: 16,
            ),
            const Divider(color: Colors.white, thickness: 1),
            buildMenuItem(
                text: 'Notifications', icon: Ionicons.notifications_outline),
            const SizedBox(
              height: 380,
            ),
            buildMenuItem(text: 'Sign out', icon: Ionicons.log_out_outline)
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
}) {
  const color = Colors.white;
  final hoverColor = Colors.white70;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: const TextStyle(color: color)),
    hoverColor: hoverColor,
    onTap: () {},
  );
}
