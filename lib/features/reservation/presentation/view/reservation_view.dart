import 'package:cine_reserve_app/core/constant/strings.dart';
import 'package:cine_reserve_app/core/widgets/custom_appbar.dart';
import 'package:cine_reserve_app/features/reservation/presentation/widgets/body_reservation_view.dart';
import 'package:flutter/material.dart';

class ReservationView extends StatelessWidget {
  const ReservationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        title: kTitleAppBarReservation,
        isBottom: false,
        isLeading: true,
      ),
      body: BodyReservationView(),
    );
  }
}
