import 'package:flutter/material.dart';
import 'package:pinterest_shopping_ui/widgets/button.dart';

class LastButton extends StatelessWidget {
  const LastButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyButton(
          color: const Color.fromRGBO(230, 116, 156, 1),
          text: 'buy now',
        ),
        SizedBox(width: 10),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(39)),
          child: Icon(Icons.shopping_cart),
        ),
      ],
    );
  }
}
