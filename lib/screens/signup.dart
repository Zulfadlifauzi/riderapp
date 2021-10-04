import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:cron/cron.dart';
import 'package:ionicons/ionicons.dart';
import 'package:riderapp/models/rider_register.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

Future<CreateUserRequest> createUser(
    String name, String latitude, String longitude) async {
  const String apiUrl = 'http://api.staging.tarsoft.co/api/coordinates/create';

  final response = await http.post(Uri.parse(apiUrl),
      body: {'name': name, 'latitude': latitude, 'longitude': longitude});
  if (response.statusCode == 200 || response.statusCode == 500) {
    print(response.statusCode);
    print(response.body);
    return CreateUserRequest.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load data');
  }
}

class _HomeScreenState extends State<SignupScreen> {
  final nameController = TextEditingController();
  final latController = TextEditingController();
  final longController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Position? _currentPosition;

  @override
  Widget build(BuildContext context) {
    longController.text = _currentPosition?.longitude.toString() ?? '';
    latController.text = _currentPosition?.latitude.toString() ?? '';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, true);
          },
          icon: const Icon(
            Ionicons.arrow_back_outline,
          ),
        ),
        // title: Text(
        //   'Locating user location',
        //   style: GoogleFonts.varela(color: Colors.black),
        // ),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 85, top: 20),
                  child: Text(
                      'Enable your location ! \nFor new live delivery experience',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.staatliches(
                        fontSize: 20,
                      )),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Container(
                    margin: const EdgeInsets.only(top: 80),
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: nameController,
                            decoration: const InputDecoration(
                                labelText: 'Enter your name'),
                          ),
                          TextFormField(
                            controller: nameController,
                            decoration: const InputDecoration(
                                labelText: 'Enter your email'),
                          ),
                          TextFormField(
                            controller: nameController,
                            decoration: const InputDecoration(
                                labelText: 'Enter your password'),
                          ),
                          TextFormField(
                            enabled: false,
                            controller: longController,
                            decoration: const InputDecoration(
                                labelText: 'Your longitude'),
                          ),
                          TextFormField(
                            enabled: false,
                            controller: latController,
                            decoration: const InputDecoration(
                                labelText: 'Your latitude'),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Container(
                  margin: const EdgeInsets.only(top: 430),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      // if (_currentPosition != null)
                      //   Text(
                      //       'Longitude: ${_currentPosition!.longitude} \nLatitude: ${_currentPosition!.latitude}'),
                      const SizedBox(height: 15),
                      TextButton(
                        child: const Text('Get Location'),
                        onPressed: () {
                          _getCurrentLocation();
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 400),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: TextButton(
                        onPressed: () async {
                          final cron = Cron()
                            ..schedule(Schedule.parse('*/10 * * * * *'),
                                () async {
                              final String name = nameController.text;
                              final String latitude = latController.text;
                              final String longitude = longController.text;
                              final CreateUserRequest user =
                                  await createUser(name, latitude, longitude);
                              setState(() {});
                              print(DateTime.now());
                            });
                          await Future.delayed(const Duration(days: 1));
                          await cron.close();
                        },
                        child: const Text(
                          'Register up',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _getCurrentLocation() {
    Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.best,
            forceAndroidLocationManager: true)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });
    }).catchError((e) {
      print(e);
    });
  }

  void schedule(Schedule schedule, Null Function() param1) {}
}
