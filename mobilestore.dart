import 'package:flutter/material.dart';

class MobileHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobile store"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image(
          image: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROLSUMEtDN8iiEs78KcPGyT1GsGlglK1bBfQ&usqp=CAU'),
          fit: BoxFit.fill,
          width: 800,
          height: 400,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.send_to_mobile_outlined),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => MenuPage()));
          }),
    );
  }
}

class MobileItem {
  final String name;
  final double price;
  final String imageUrl;
  MobileItem({required this.name, required this.price, required this.imageUrl});
}

class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);
  final List<MobileItem> mobileItems = [
    MobileItem(
        name: 'iPhone 13 Pro',
        price: 999,
        imageUrl:
            'https://m.media-amazon.com/images/I/51f4A6Tr8zL._SX522_.jpg'),
    MobileItem(
        name: 'Samsung Galaxy S21 Ultra',
        price: 1099,
        imageUrl:
            'https://m.media-amazon.com/images/I/51f4A6Tr8zL._SX522_.jpg'),
    MobileItem(
        name: 'OnePlus 9 Pro',
        price: 899,
        imageUrl:
            'https://m.media-amazon.com/images/I/51f4A6Tr8zL._SX522_.jpg'),
    MobileItem(
        name: 'Google Pixel 6 Pro',
        price: 899,
        imageUrl:
            'https://m.media-amazon.com/images/I/51f4A6Tr8zL._SX522_.jpg'),
    MobileItem(
        name: 'Xiaomi Mi 11 Ultra',
        price: 1199,
        imageUrl:
            'https://m.media-amazon.com/images/I/51f4A6Tr8zL._SX522_.jpg'),
    MobileItem(
        name: 'Sony Xperia 1 III',
        price: 1299,
        imageUrl:
            'https://m.media-amazon.com/images/I/51f4A6Tr8zL._SX522_.jpg'),
    MobileItem(
        name: 'LG Velvet',
        price: 699,
        imageUrl:
            'https://m.media-amazon.com/images/I/51f4A6Tr8zL._SX522_.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobiles'),
      ),
      body: ListView.builder(
        itemCount: mobileItems.length,
        itemBuilder: (context, index) {
          final mobileItem = mobileItems[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.network(
                  mobileItem.imageUrl,
                  height: 80,
                  width: 80,
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mobileItem.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '\$ ${mobileItem.price}',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
