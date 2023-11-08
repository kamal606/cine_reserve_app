import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageTicket extends StatelessWidget {
  const ImageTicket({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.fill,
      height: 330.h,
      width: double.infinity,
    );
  }
}
