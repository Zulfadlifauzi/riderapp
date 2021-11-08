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
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    const Text('Achievement'),
                    Expanded(child: Container()),
                    const Text('See All'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 190,
                    child: ListView.builder(
                        itemCount: levelup.length,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Container(
                              width: 200,
                              margin:
                                  const EdgeInsets.only(right: 20, left: 20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                              ),
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                            width: 200,
                                            height: 130,
                                            child: Image.network(
                                              levelup[index].image!,
                                              fit: BoxFit.cover,
                                            )),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                            child: Column(
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
                                            ),
                                          ],
                                        )),
                                      ],
                                    )
                                  ],
                                ),
                              ));
                        }),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


            // Container(
            //   margin: const EdgeInsets.only(top: 230),
            //   height: 150,
            //   width: double.infinity,
            //   child: ListView.builder(
            //     itemCount: levelup.length,
            //     scrollDirection: Axis.horizontal,
            //     physics: const BouncingScrollPhysics(),
            //     padding: const EdgeInsets.only(left: 20, right: 10),
            //     itemBuilder: (context, index) {
            //       return Container(
            //         margin: const EdgeInsets.only(right: 20),
            //         height: 45,
            //         width: 150,
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(5),
            //             color: Colors.white),
            //         child: Container(
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: <Widget>[
            //               Column(
            //                 children: [
            //                   Image.network(
            //                     levelup[index].image!,
            //                     fit: BoxFit.fill,
            //                   ),
            //                   Text(
            //                     levelup[index].name!,
            //                   ),
            //                   const SizedBox(height: 5),
            //                   Text(
            //                     levelup[index].status!,
            //                     style: const TextStyle(
            //                         color: Colors.greenAccent,
            //                         fontWeight: FontWeight.bold),
            //                   )
            //                 ],
            //               )
            //             ],
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // )
