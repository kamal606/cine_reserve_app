import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:cine_reserve_app/core/constant/strings.dart';
import 'package:cine_reserve_app/core/widgets/custom_appbar.dart';
import 'package:cine_reserve_app/features/reservation/presentation/widgets/select_seats_widgets/body_select_seats.dart';
import 'package:flutter/material.dart';

class SelectSeatsView extends StatelessWidget {
  const SelectSeatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.secondry,
      appBar: CustomAppBar(
        title: kSelectSeats,
        isBottom: false,
        isLeading: true,
      ),
      body: SelectSeatsViewBody(),
    );
  }
}
