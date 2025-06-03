import 'package:flutter/material.dart';

class Blazer extends StatelessWidget {
  const Blazer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.5, 
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(230, 116, 156, 1),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromRGBO(230, 116, 156, 1),
                child: Icon(Icons.favorite, color: Colors.white),
              ),
              CircleAvatar(
                backgroundColor: const Color.fromRGBO(230, 116, 156, 1),
                child: Icon(Icons.favorite, color: Colors.white),
              ),
            ],
          ),
          const Spacer(),

          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/shop.jpg',
              height: 100, 
              fit: BoxFit.cover,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
