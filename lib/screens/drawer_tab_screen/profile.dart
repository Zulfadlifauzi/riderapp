import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:riderapp/models/achievement.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 130, bottom: 500, top: 20),
                child: CircularProfileAvatar(
                  '',
                  child: const Icon(
                    Icons.person,
                    size: 140,
                  ),
                  borderColor: Colors.black,
                  borderWidth: 3,
                  elevation: 5,
                  radius: 75,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Achievement',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text('See All')
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 60),
            height: 45,
            child: ListView.builder(
              itemCount: levelup.length,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.only(left: 28, right: 10),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      color: Colors.white),
                  child: Row(
                    children: <Widget>[Image.asset(levelup[index].image!)],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
