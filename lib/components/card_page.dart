import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: 300,
          child: Column(children: [
            Expanded(
              child: Image.network(
                  fit: BoxFit.cover,
                  "https://daisyui.com/images/stock/photo-1606107557195-0e29a4b5b4aa.jpg"),
            ),
            Expanded(
              child: Column(
                children: [
                  SelectableText(
                    "Card",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SelectableText(
                    "Card is a flexible container with various options for laying out content, including predefined grid options for displaying content.",
                  ),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }

  CardPage.fullImage();
}
