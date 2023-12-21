import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_adaptive/widgets/layout_builder/mobile_layout.dart';

class LayoutBuilderScreen extends StatelessWidget {
  const LayoutBuilderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        log(constraints.maxWidth.toString());
        if (constraints.maxWidth <= 500) {
          return const MobileLayout();
        } else {
          return const Text('Current Layout width is height that 480');
        }
      }),
    );
  }
}
