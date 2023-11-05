// import 'package:cine_reserve_app/core/constant/app_color.dart';
// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key}) : super(key: key);

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _currentIndex = 0;
//   bool rightIconButton = true;
//   bool leftIconButton = true;
//   bool centerIconButton = true;

//   @override
//   Widget build(BuildContext context) {
//     FloatingActionButtonLocation fabLocation;

//     if (_currentIndex == 0) {
//       fabLocation = FloatingActionButtonLocation.startDocked;
//       rightIconButton = true;
//       leftIconButton = false;
//       centerIconButton = true;
//     } else if (_currentIndex == 1) {
//       fabLocation = FloatingActionButtonLocation.centerDocked;
//       rightIconButton = true;
//       leftIconButton = true;
//       centerIconButton = false;
//     } else {
//       fabLocation = FloatingActionButtonLocation.endDocked;
//       rightIconButton = false;
//       leftIconButton = true;
//       centerIconButton = true;
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Bottom Navigation Bar Example'),
//       ),
//       body: Center(
//         child: Text('Page ${_currentIndex + 1}'),
//       ),
//       floatingActionButton: Container(
//         decoration: const BoxDecoration(
//           shape: BoxShape.circle,
//           color: Colors.blue,
//         ),
//         child: FloatingActionButton(
//           onPressed: () {},
//           elevation: 0.0,
//           child: const Icon(Icons.home),
//         ),
//       ),
//       floatingActionButtonLocation: fabLocation,
//       bottomNavigationBar: BottomAppBar(
//         color: Colors.blue, // Change to your desired color
//         shape: const CircularNotchedRectangle(),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 25),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//             rightIconButton?  IconButton(
//                 icon: const Icon(Icons.home),
//                 onPressed: () {
//                   setState(() {
//                     _currentIndex = 0;
//                   });
//                 },
//               ),
//               centerIconButton
//                   ? IconButton(
//                       icon: const Icon(Icons.home),
//                       onPressed: () {
//                         setState(() {
//                           _currentIndex = 1;
//                         });
//                       },
//                     )
//                   : const SizedBox(),
//               rightIconButton
//                   ? IconButton(
//                       icon: const Icon(Icons.category),
//                       onPressed: () {
//                         setState(() {
//                           _currentIndex = 2;
//                         });
//                       },
//                     )
//                   : const SizedBox(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
