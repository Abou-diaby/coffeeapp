import 'package:flutter/material.dart';

class ProductRow extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductRow({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xffF5F5F5),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: 20,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 13.67,
                  vertical: 9.56,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.asset(
                  "assets/images/matcha_lattee.png",
                  width: 48.66,
                  height: 52,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    product["name"],
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 13),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    product["price"] != null ? "\$${product["price"]}" : 'N/A',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffA97C37),
                      fontWeight: FontWeight.w900,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
