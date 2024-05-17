import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class FavouriteScreen extends StatelessWidget {
  FavouriteScreen({super.key});

  // Product data list
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Orange T-Shirt',
      'price': '600',
      'imagePath': 'assets/logos/orange1.png',
    },
    {
      'name': 'Blue Polo T-Shirt',
      'price': '250',
      'imagePath': 'assets/logos/blue1.png',
    },
    {
      'name': 'Yellow Polo T-Shirt',
      'price': '500',
      'imagePath': 'assets/logos/yellow1.png',
    },
    // Add more products here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white24,
        centerTitle: true,
        title: const Text('Wishlist', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/Burger.svg'),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/total cost.svg'),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/shopping-cart.svg'),
            color: Colors.black,
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView.builder(
              itemCount: (products.length / 2).ceil(),
              itemBuilder: (BuildContext context, int index) {
                final int firstIndex = index * 2;
                final int secondIndex = firstIndex + 1;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProductItem(data: products[firstIndex]),
                    if (secondIndex < products.length)
                      ProductItem(data: products[secondIndex]),
                  ],
                );
              }),
        ),
      ),
    );
  }
}

class ProductItem extends StatefulWidget {
  final Map data;

  const ProductItem({super.key, required this.data});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool clicked = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    image: AssetImage(
                      widget.data['imagePath'],
                    ),
                    fit: BoxFit.cover,
                  ),
                  color: const Color.fromARGB(255, 233, 233, 233)),
              height: 180,
              width: 140,
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.data['name'],
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    " ${widget.data['price']} EGP",
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset('assets/star.svg'),
                        color: Colors.black,
                      ),
                      const Text("0.5"),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () {
                  setState(() => clicked = !clicked);
                },
                child: Icon(
                  clicked
                      ? Icons.favorite
                      : Icons.favorite_outline_outlined,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
