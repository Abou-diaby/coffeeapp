import 'package:coffeeapp/components/product_column.dart';
import 'package:coffeeapp/components/product_row.dart';
import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  final List<Map<String, dynamic>> products = [
    {"name": "Coffee", "price": 1500, "image": "coffee.png"},
    {"name": "Cappuccino", "price": 1800, "image": "cappuccino.png"},
    {"name": "Espresso", "price": 1300, "image": "espresso.png"},
    {"name": "Tea", "price": 1200, "image": "tea.png"},
    {"name": "Orange Juice", "price": 1700, "image": "orange_juice.png"},
    {"name": "Smoothie", "price": 2000, "image": "smoothie.png"},
    {"name": "Beer", "price": 2000, "image": "beer.png"},
    {"name": "Wine Glass", "price": 2500, "image": "wine.png"},
    {"name": "Cocktail", "price": 3000, "image": "cocktail.png"},
    {"name": "Sandwich", "price": 2200, "image": "sandwich.png"},
    {"name": "Burger", "price": 2800, "image": "burger.png"},
    {"name": "Salad", "price": 2000, "image": "salad.png"},
    {"name": "Cake", "price": 1600, "image": "cake.png"},
    {"name": "Pastry", "price": 1500, "image": "pastry.png"},
    {"name": "Events", "price": 0, "image": "events.png"},
  ];

  final String contentDirection;

  ProductList({super.key, required this.contentDirection});

  @override
  State<ProductList> createState() => _ProductList();
}

class _ProductList extends State<ProductList> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.contentDirection == "column") {
      return SizedBox(
        height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.products.length,
          itemBuilder: (context, idx) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ProductColumn(product: widget.products[idx]),
            );
          },
        ),
      );
    }
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Frozen Beverages",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 14),
              ),
              Text(
                "See all",
                style: TextStyle(
                  color: Color(0xffA97C37),
                  fontWeight: FontWeight.w900,
                  fontSize: 12,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 7),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            
            itemCount: widget.products.length,
            itemBuilder: (context, idx) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ProductRow(product: widget.products[idx]),
              );
            },
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}
