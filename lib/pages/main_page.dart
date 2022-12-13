import 'package:flutter/material.dart';
import 'package:my_profile/pages/tabletPage.dart';
import '../responsive/resizer_layout.dart';
import 'desktopPage.dart';
import 'mobilePage.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResizerLayout(
      mobilePage: MobilePage(),
      tabletPage: TabletPage(),
      desktopPage: DesktopPage(),
    );
  }
}
