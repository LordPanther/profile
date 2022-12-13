import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../route/routes.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  State<MobileBody> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
          const Positioned.fill(
            child: Image(
              image: AssetImage("/mobile/galaxy2.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          Scaffold(
              backgroundColor:
              Colors.transparent, // <-- SCAFFOLD WITH TRANSPARENT BG
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Container(
                      width: 200,
                      height: 200,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Colors.blue,
                            Colors.white,
                          ]),
                          shape: BoxShape.circle),
                      child: Padding(
                        //this padding will be you border size
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: const CircleAvatar(
                            backgroundColor: Colors.white,
                            foregroundImage: AssetImage("lindaningubane2.jpg"),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text("Lindani Ngubane",
                      style: TextStyle(
                        color: Colors.grey,
                          fontFamily: "Roboto, sans-serif",
                          fontSize: 40,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 25),
                    IconButton(onPressed: (){
                      Navigator.of(context).pushNamed(RouteManager.mainPage);
                    }, icon: const Icon(FontAwesomeIcons.house, size: 35, color: Colors.grey,))
                  ],
                ),
              )),
        ])
    );
  }
}