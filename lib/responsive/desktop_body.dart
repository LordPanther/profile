import 'package:flutter/material.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({Key? key}) : super(key: key);

  @override
  State<DesktopBody> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopBody> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("forest1.jpg"), fit: BoxFit.fill)),
      ),
      Container(
          alignment: Alignment.center,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Stack(children: [
              //Bottom
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black,
                    image: const DecorationImage(
                        image: AssetImage("lindaningubane1.jpg"))
            ),
              )
            ]),
            const Text(
              "Lindani Ngubane",
              style: TextStyle(color: Colors.black),
            )
          ]))
    ]));
  }
}
