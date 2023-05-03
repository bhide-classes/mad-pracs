import 'package:flutter/material.dart';

class RestaurantHomePage extends StatelessWidget {
  const RestaurantHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mumbai Townhill'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/restaurant.png', // Add your own image asset path here
              width: 800,
              height: 400,
            ),
            SizedBox(height: 20),
            Text(
              'Mumbai Townhill', // Add your own book store name here
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MenuListPage()),
          );
        },
        child: Icon(Icons.menu),
      ),
    );
  }
}

class MenuListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu'),
        ),
        body: ListView(
          children: [
            Menu(
              image:
                  'https://m.media-amazon.com/images/I/51Z86bIiB+L._AC_UL600_FMwebp_QL65_.jpg',
              name: 'Masala Dosa',
              price: '\Rs.150',
            ),
            Menu(
              image:
                  'https://m.media-amazon.com/images/I/818J25zUQ7L._AC_UL600_FMwebp_QL65_.jpg',
              name: 'Pav bhaji',
              price: '\Rs.100',
            ),
            Menu(
              image:
                  'https://m.media-amazon.com/images/I/51896I1hszL._AC_UL600_FMwebp_QL65_.jpg',
              name: 'Chocolate Ice cream',
              price: '\Rs.100',
            ),
          ],
        ),
      ),
    );
  }
}

class Menu extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const Menu(
      {Key? key, required this.image, required this.name, required this.price})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: [
          Image.network(
            image,
            height: 100.0,
            width: 75.0,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                price,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
