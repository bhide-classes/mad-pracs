import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 150,
              color: Colors.amber[600],
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/paneer.png',
                    height: 130,
                    width: 200,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                      children: const [
                        Text(
                          "Paneer Tikka Masala",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text("Rs. 400")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
