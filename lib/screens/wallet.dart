import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('WALLET'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Ionicons.menu_outline),
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: const <Widget>[
                Icon(
                  Ionicons.wallet_outline,
                  size: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Text(
                    'RM',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              width: double.infinity,
              height: 45,
              decoration: const BoxDecoration(color: Colors.grey),
              child: const Padding(
                padding: EdgeInsets.only(left: 10, top: 12),
                child: Text(
                  'Recent Transactions',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
          Divider(thickness: 1),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(Ionicons.cash_outline),
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  '"Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit, \nsed do eiusmod tempor incididunt \nut labore et dolore magna aliqua."',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          const Divider(thickness: 1),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Icon(Ionicons.cash_outline),
              ),
              const Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  '"Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit, \nsed do eiusmod tempor incididunt \nut labore et dolore magna aliqua."',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          const Divider(thickness: 1),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Icon(Ionicons.cash_outline),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  '"Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit, \nsed do eiusmod tempor incididunt \nut labore et dolore magna aliqua."',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          const Divider(thickness: 1),
        ],
      ),
    );
  }
}
