import 'package:flutter/material.dart';

class ProductColumn extends StatelessWidget {
  final Map<String, dynamic> product;

  const ProductColumn({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Color(0xffF5F5F5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
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
                const SizedBox(height: 20,)
              ],
            ),
          ),
          Positioned(
            top: -20,
            width: 76,
            height: 76,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 13.67, vertical: 9.56),
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
          ),
        ],
      ),
    );
  }
}
