// import 'package:flutter/material.dart';
//
// import '../util/constants.dart';
// import '../util/my_box.dart';
// import '../util/my_tile.dart';
//
// class MobileBody extends StatefulWidget {
//   const MobileBody({Key? key}) : super(key: key);
//
//   @override
//   State<MobileBody> createState() => _MobileScaffoldState();
// }
//
// class _MobileScaffoldState extends State<MobileBody> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: defaultBackgroundColor,
//       appBar: myAppBar,
//       drawer: myDrawer,
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           children: [
//             // first 4 boxes in grid
//             AspectRatio(
//               aspectRatio: 1,
//               child: SizedBox(
//                 width: double.infinity,
//                 child: GridView.builder(
//                   itemCount: 4,
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2),
//                   itemBuilder: (context, index) {
//                     return const MyBox();
//                   },
//                 ),
//               ),
//             ),
//
//             // list of previous days
//             Expanded(
//               child: ListView.builder(
//                 itemCount: 4,
//                 itemBuilder: (context, index) {
//                   return const MyTile();
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }