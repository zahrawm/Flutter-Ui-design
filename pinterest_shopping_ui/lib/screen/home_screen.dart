import 'package:flutter/material.dart';
import 'package:pinterest_shopping_ui/model/button.details.dart';
import 'package:pinterest_shopping_ui/screen/decor_screen.dart';
import 'package:pinterest_shopping_ui/widgets/girl.dart';
import 'package:pinterest_shopping_ui/widgets/button.dart';
import 'package:pinterest_shopping_ui/widgets/shop.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                        return DecorScreen();
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
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Hello Zakarai',
                style: TextStyle(
                  color: Color.fromRGBO(58, 58, 58, 1),
                  fontSize: 14,
                ),
              ),
              Text(
                'Jakarrata NIA',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          centerTitle: true,
          leading: CircleAvatar(child: Icon(Icons.dashboard)),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/young.jpg'),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        labelText: 'Search',
                        prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey[300]!),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey[400]!),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(230, 116, 156, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.filter_list, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Shop(),
              SizedBox(height: 10),

              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: buttonData.length,
                  itemBuilder: (context, index) {
                    final data = buttonData[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: MyButton(
                        color: data['color'],
                        text: data['text'],
                        width: 100,
                        height: 35,
                        textStyle: TextStyle(
                          color: data['textColor'],
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),

              Expanded(child: GridViewGallery()),
            ],
          ),
        ),
      ),
    );
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
          color:
              isSelected ? Colors.white : const Color.fromRGBO(58, 58, 58, 1),
          size: 24,
        ),
      ),
    );
  }
}
