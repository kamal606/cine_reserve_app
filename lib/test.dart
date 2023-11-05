// import 'package:cine_reserve_app/core/constant/app_color.dart';
// import 'package:cine_reserve_app/core/constant/app_linear.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class MyWidget extends StatelessWidget {
//   const MyWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Container Layout'),
//       ),
//       body: SizedBox(
//         height: 150.h,
//         width: MediaQuery.of(context).size.width,
//         child: const Stack(
//           children: [
//             CustomBoxChooseDay(alignment: Alignment.bottomLeft),
//             CustomBoxChooseDay(alignment: Alignment(-0.5, 0.3)),
//             CustomBoxChooseDay(alignment: Alignment(0.5, 0.3)),
//             CustomBoxChooseDay(alignment: Alignment(0, -0.3)),
//             CustomBoxChooseDay(alignment: Alignment.bottomRight),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CustomBoxChooseDay extends StatelessWidget {
//   const CustomBoxChooseDay({super.key, required this.alignment});
//   final AlignmentGeometry alignment;

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: alignment,
//       child: FractionallySizedBox(
//         widthFactor: 65.w / MediaQuery.of(context).size.width,
//         heightFactor: 100.h / 150.h,
//         child: Container(
//           decoration: BoxDecoration(
//               gradient: AppLinear.linearReservation,
//               borderRadius: BorderRadius.circular(12.r),
//               boxShadow: const [
//                 BoxShadow(
//                   color: AppColor.lightBlue,
//                   offset: Offset(-1, -1),
//                 )
//               ]),
//         ),
//       ),
//     );
//   }
// }
