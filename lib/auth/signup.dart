import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:cron/cron.dart';
import 'package:riderapp/models/rider_register.dart';
import 'package:riderapp/widgets/bottom_tab_navigator.dart';

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
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final latController = TextEditingController();
  final longController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Position? _currentPosition;
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    longController.text = _currentPosition?.longitude.toString() ?? '';
    latController.text = _currentPosition?.latitude.toString() ?? '';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Register',
          style: GoogleFonts.staatliches(
              color: Colors.white, letterSpacing: 5, fontSize: 20),
        ),
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
              children: const [
                SizedBox(height: 50),
                Padding(
                  padding: EdgeInsets.only(left: 80),
                  child: Text('Create an account, its free',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const SizedBox(height: 120),
                        TextFormField(
                          controller: nameController,
                          decoration: const InputDecoration(
                            // border: OutlineInputBorder(),
                            labelText: 'Enter your name',
                            labelStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                        TextFormField(
                          controller: emailController,
                          decoration: const InputDecoration(
                              labelText: 'Enter your email',
                              labelStyle: TextStyle(color: Colors.grey)),
                        ),
                        TextFormField(
                          obscureText: hidePassword,
                          controller: passwordController,
                          decoration: const InputDecoration(
                              labelText: 'Enter your password',
                              labelStyle: TextStyle(color: Colors.grey)),
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
                          decoration:
                              const InputDecoration(labelText: 'Your latitude'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 480),
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
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Column(
                  children: [
                    const SizedBox(height: 450),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5.0)),
                      child: TextButton(
                        onPressed: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BottomTabNavigator()));
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
                              _clearTextFormField();
                            });
                          await Future.delayed(const Duration(days: 1));
                          await cron.close();
                        },
                        child: const Text(
                          'Sign Up',
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

  _clearTextFormField() {
    emailController.clear();
    nameController.clear();
    passwordController.clear();
    longController.clear();
    latController.clear();
  }
}
