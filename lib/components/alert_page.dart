import 'package:daisy_ui_clone/components/card_page.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SelectableText(
          "Alert",
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SelectableText(
          "Alert informs users about important events.",
        ),
      ]),
    );
  }
}
