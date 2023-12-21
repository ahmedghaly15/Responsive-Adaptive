import 'package:flutter/material.dart';
import 'package:responsive_adaptive/screens/layout_builder/item_details_screen.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ItemDetailsScreen(number: index),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            color: index % 2 == 0 ? Colors.red : Colors.blue,
            child: ListTile(
              title: const Text(
                'Item',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              subtitle: Text(
                '${index + 1}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
