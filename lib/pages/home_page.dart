import 'package:flutter/material.dart';
import 'package:my_profile/responsive/desktop_body.dart';

import '../responsive/mobile_body.dart';
import '../responsive/responsive_layout.dart';
import '../responsive/tablet_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      mobileBody: MobileBody(),
      tabletBody: TabletBody(),
      desktopBody: DesktopBody(),
    );
  }
}
