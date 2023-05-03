import 'package:flutter/material.dart';

import 'menu.dart';

class RestaurantMenu extends StatelessWidget {
  const RestaurantMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Welcome to Restaurant"),
        ),
        body: Stack(
          children: <Widget>[
            Image.asset(
              'assets/restaurant.png',
              opacity: const AlwaysStoppedAnimation(.4),
            ),
            const Padding(
              padding: EdgeInsets.all(80.0),
              child: Text(
                "BT's Healthy Food Hub",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const Menu()));
          },
          label: const Text("Menu"),
        ));
  }
}
