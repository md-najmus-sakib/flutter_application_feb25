import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Cart'),
        ),
        body: CartPage(),
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            padding: EdgeInsets.all(16.0),
            children: [
              CartItem(
                name: 'Smart Watch',
                price: 220,
                quantity: 1,
                total: 220,
                imagePath: 'assets/images/img1.png',
              ),
              CartItem(
                name: 'HeadPhone',
                price: 105,
                quantity: 1,
                total: 105,
                imagePath: 'assets/images/img2.png',
              ),
              CartItem(
                name: 'Shoes',
                price: 80,
                quantity: 2,
                total: 160,
                imagePath: 'assets/images/img3.png',
              ),
              CartItem(
                name: 'T-Shirt',
                price: 125,
                quantity: 3,
                total: 375,
                imagePath: 'assets/images/img4.png',
              ),
            ],
          ),
        ),
        Divider(),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '\$860',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(16.0),
          child: SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Buy Now',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CartItem extends StatelessWidget {
  final String name;
  final int price;
  final int quantity;
  final int total;
  final String imagePath;

  CartItem({
    required this.name,
    required this.price,
    required this.quantity,
    required this.total,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('\$$price × $quantity = \$$total'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
