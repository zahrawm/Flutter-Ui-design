import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(230, 116, 156, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/shop.jpg',
              width: 140,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Big Sale",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Get ready',
                  style: TextStyle(
                    color: const Color.fromRGBO(228, 220, 220, 1),
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'Look sharp',
                  style: TextStyle(
                    color: const Color.fromRGBO(228, 220, 220, 1),
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '50% OFF',
                  style: TextStyle(
                    color: Color.fromRGBO(228, 220, 220, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
