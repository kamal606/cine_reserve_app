import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class RadialGradientExample extends StatelessWidget {
  const RadialGradientExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(0.0, 0.0),
          radius: 1,
          colors: [
            Color.fromRGBO(255, 0, 0, 1),
            AppColor.primary,
          ],
          stops: [0, 0.8],
        ),
      ),
    );
  }
}
