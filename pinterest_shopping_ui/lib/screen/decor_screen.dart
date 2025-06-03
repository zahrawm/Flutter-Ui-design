import 'package:flutter/material.dart';

import 'package:pinterest_shopping_ui/widgets/blazer.dart';

class DecorScreen extends StatelessWidget {
  const DecorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Blazer(),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Pink Blazer',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(),
                  Text(
                    '\$250',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Text(
                'America Jacket',
                style: TextStyle(
                  color: const Color.fromARGB(255, 224, 220, 220),
                ),
              ),
              SizedBox(height: 5),
              Text(
                'I have given most of what I acquired here furniture, electronic devices, even house fittings . So, every night for a week now, I\'ve tossed about on this bed without a television to shorten my insomniac hours.',
                style: TextStyle(fontSize: 15, color: Colors.grey[600]),
              ),
              SizedBox(height: 50),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(230, 116, 156, 1),
                        padding: const EdgeInsets.all(30),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Buy Now',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(width: 20),

                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 230, 202, 202),
                      padding: const EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: const Size(60, 60),
                    ),
                    child: const Icon(
                      Icons.shopping_cart,
                      size: 24,
                      color: const Color.fromRGBO(230, 116, 156, 1),
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
