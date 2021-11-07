import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ionicons/ionicons.dart';
import 'package:riderapp/models/order.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  final _pageController = PageController(viewportFraction: 0.877);
  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Maps Sample App'),
        //   backgroundColor: Colors.green[700],
        // ),
        body: Stack(
          children: <Widget>[
            Positioned(
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  SizedBox(
                    width: 400,
                    height: 170,
                    // decoration: const BoxDecoration(color: Colors.blue),
                    child: PageView(
                        physics: const BouncingScrollPhysics(),
                        controller: _pageController,
                        scrollDirection: Axis.horizontal,
                        children: List.generate(
                          orderlist.length,
                          (int index) => GestureDetector(
                            onTap: () => showModalBottomSheet(
                              enableDrag: true,
                              isDismissible: true,
                              context: context,
                              builder: (context) => buildSheet(),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              margin: const EdgeInsets.only(right: 25),
                              width: 350.6,
                              height: 218.4,
                              // decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(9.6),
                              //     image: DecorationImage(
                              //         fit: BoxFit.cover,
                              //         image: NetworkImage(
                              //             orderlist[index].image!))),
                              child: Stack(
                                children: <Widget>[
                                  Row(
                                    children: const <Widget>[
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 50, left: 20)),
                                      Text(
                                        'Pick up',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 50, left: 100)),
                                      Text(
                                        'Delivery to',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 35),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          orderlist[index].pickup!,
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 181, top: 35),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          orderlist[index].dropoff!,
                                        )
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: const <Widget>[
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 160, left: 20)),
                                      Text(
                                        'Total distance',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 160, left: 48)),
                                      Text(
                                        'Location',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 90),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          orderlist[index].mile!,
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 182, top: 90),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          orderlist[index].location!,
                                        )
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 10,
                                    right: 10,
                                    child: SizedBox(
                                      height: 40,
                                      width: 80,
                                      // decoration:
                                      //     BoxDecoration(color: Colors.red),
                                      child: TextButton(
                                        onPressed: () => showDialog<String>(
                                          context: context,
                                          builder: (BuildContext context) =>
                                              AlertDialog(
                                            title: const Text('Confirm Order'),
                                            content: Row(
                                              children: const <Widget>[
                                                Icon(Ionicons.bag_outline),
                                                Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 10),
                                                  child:
                                                      Text('k8k8-kkkl(#5151)'),
                                                ),
                                              ],
                                            ),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    context, 'Cancel'),
                                                child: const Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    context, 'OK'),
                                                child: const Text('Confirm'),
                                              ),
                                            ],
                                          ),
                                        ),
                                        child: const Text('Accept'),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget buildSheet() => Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            children: const [
              Icon(Ionicons.person_outline),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Name :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('Amir'),
              )
            ],
          ),
        ),
        const Divider(thickness: 1),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            children: const [
              Icon(Ionicons.chatbox_outline),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Note : ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('"Bang letak kat meja ya"'),
              )
            ],
          ),
        ),
        const Divider(thickness: 1),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            children: const [
              Icon(Ionicons.card_outline),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Payment :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('Online payment'),
              )
            ],
          ),
        ),
        const Divider(thickness: 1),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            children: const [
              Icon(Ionicons.location_outline),
              Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Distance :',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('10 KM'),
              )
            ],
          ),
        ),
        const Divider(thickness: 1),
        Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 15, left: 20),
              child: Text(
                'Pick up :',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 1),
              child: Text('Pizza Hut \naeon shah alam'),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10, left: 50),
              child: Text(
                'Dropped off :',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text('Menara U'),
            ),
          ],
        ),
        const SizedBox(height: 10)
      ],
    );
