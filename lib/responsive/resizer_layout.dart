import 'package:flutter/material.dart';

class ResizerLayout extends StatelessWidget {
  final Widget mobilePage;
  final Widget tabletPage;
  final Widget desktopPage;

  const ResizerLayout({super.key,
    required this.mobilePage,
    required this.tabletPage,
    required this.desktopPage,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
          return mobilePage;
        } else if (constraints.maxWidth < 1100) {
          return tabletPage;
        } else {
          return desktopPage;
        }
      },
    );
  }
}