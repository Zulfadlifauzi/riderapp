import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:google_fonts/google_fonts.dart';
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
        title: Text(
          'Profile',
          style: GoogleFonts.staatliches(
              color: Colors.white, letterSpacing: 5, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
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
          const Padding(
            padding: EdgeInsets.only(top: 180),
            child: Divider(thickness: 1),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 185),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Achievement',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'See All',
                      style: TextStyle(color: Colors.grey),
                    ))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 230),
            height: 150,
            width: double.infinity,
            child: ListView.builder(
              itemCount: levelup.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 20, right: 10),
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 20),
                  height: 45,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: [
                            Text(
                              levelup[index].name!,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              levelup[index].status!,
                              style: const TextStyle(
                                  color: Colors.greenAccent,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
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
