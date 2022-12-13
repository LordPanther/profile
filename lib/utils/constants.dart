import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

var defaultBackgroundColor = Colors.grey[300];
var appBarColor = Colors.grey[900];
var myAppBar = AppBar(
  backgroundColor: appBarColor,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text('PROJECT MONKEY'),
      Row(
        children: const [
          Text(
            "Lindani Ngubane",
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(width: 10),
          CircleAvatar(
            backgroundImage: AssetImage("assets/my-image.jpg"),
          )
        ],
      )
    ],
  ),
  centerTitle: false,
);
var drawerTextColor = TextStyle(
  color: Colors.grey[600],
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  elevation: 0,
  child: Column(
    children: [
      const DrawerHeader(
        child: Icon(
          Icons.auto_graph_sharp,
          size: 64,
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.home),
          title: Text(
            'D A S H B O A R D',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.settings),
          title: GestureDetector(
            onTap: () {},
            child: Text(
              'S E T T I N G S',
              style: drawerTextColor,
            ),
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.info),
          title: Text(
            'A B O U T',
            style: drawerTextColor,
          ),
        ),
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: const Icon(Icons.logout),
          title: GestureDetector(
            onTap: () {
              FirebaseAuth.instance.signOut();
            },
            child: Text(
              "L O G O U T",
              style: drawerTextColor,
            ),
          ),
        ),
      ),
    ],
  ),
);
