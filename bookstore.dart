

import 'package:flutter/material.dart';

class BookStoreHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mahesh Book Store'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/bookstore.jpg', // Add your own image asset path here
              width: 800,
              height: 400,
            ),
            SizedBox(height: 20),
            Text(
              'Mahesh Book Store', // Add your own book store name here
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BookListPage()),
          );
        },
        child: Icon(Icons.menu),
      ),
    );
  }
}

class BookListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Details',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Book Details'),
        ),
        body: ListView(
          children: [
            BookDetails(
              image: 'https://m.media-amazon.com/images/I/21Cm3oGsIuL._SX326_BO1,204,203,200_.jpg',
              name: 'Still Born',
              price: '\Rs.1,700',
            ),
            BookDetails(
              image: 'https://m.media-amazon.com/images/I/51dZimXq-YL._SY264_BO1,204,203,200_QL40_FMwebp_.jpg',
              name: 'Dust Child',
              price: '\Rs.1000',
            ),
            BookDetails(
              image: 'https://m.media-amazon.com/images/I/51rHVhRb-8L._SX324_BO1,204,203,200_.jpg',
              name: 'Time Shelter',
              price: '\Rs.500',
            ),
            BookDetails(
              image: 'https://m.media-amazon.com/images/I/51ltb3Lt0NL._SX328_BO1,204,203,200_.jpg',
              name: 'Paris : The Memoir',
              price: '\Rs.1,210',
            ),
            BookDetails(
              image: 'https://images-na.ssl-images-amazon.com/images/I/51wOOMQ+F3L._SX325_BO1,204,203,200_.jpg',
              name: 'The Power of Now',
              price: '\Rs.8.99',
            ),
            BookDetails(
              image: 'https://m.media-amazon.com/images/I/51CdGXLod1L._SX319_BO1,204,203,200_.jpg',
              name: 'In a Thousand Different Ways',
              price: '\Rs.600',

            ),
            BookDetails(
              image: 'https://m.media-amazon.com/images/I/41a6cinT9RL._SX312_BO1,204,203,200_.jpg',
              name: 'The ABYSS',
              price: '\Rs.409',
            ),
          ],
        ),
      ),
    );
  }
}
class BookDetails extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  const BookDetails({Key? key, required this.image, required this.name, required
  this.price}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
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