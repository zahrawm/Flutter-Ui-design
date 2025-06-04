import 'package:flutter/material.dart';
import 'package:pinterest_shopping_ui/screen/decor_screen.dart';
import 'package:pinterest_shopping_ui/widgets/card.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNavItem(
                Icons.home,
                isSelected: false,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const DecorScreen();
                      },
                    ),
                  );
                },
              ),
              _buildNavItem(Icons.bookmark, isSelected: true, onTap: () {}),
              _buildNavItem(
                Icons.shopping_cart,
                isSelected: false,
                onTap: () {},
              ),
              _buildNavItem(Icons.person, isSelected: false, onTap: () {}),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Card',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          centerTitle: true,
          leading: const CircleAvatar(child: Icon(Icons.dashboard)),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/young.jpg'),
              ),
            ),
          ],
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [CustomCard(), CustomCard(), CustomCard(), CustomCard() ],
          ),
        ),
      ),
    );
  }
}

Widget _buildNavItem(
  IconData icon, {
  required bool isSelected,
  required VoidCallback onTap,
}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color:
            isSelected
                ? const Color.fromRGBO(230, 116, 156, 1)
                : Colors.transparent,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: isSelected ? Colors.white : const Color.fromRGBO(58, 58, 58, 1),
        size: 24,
      ),
    ),
  );
}
