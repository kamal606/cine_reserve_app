import 'package:cine_reserve_app/core/constant/app_color.dart';
import 'package:cine_reserve_app/features/tickets/presentation/widgets/body_ticket_view.dart';
import 'package:flutter/material.dart';

class TicketsView extends StatelessWidget {
  const TicketsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Transform.rotate(
              angle: 0.2,
              child: const TicketsViewBody(color: AppColor.black),
            ),
            Transform.rotate(
                angle: -0.2,
                child: const TicketsViewBody(color: AppColor.primary)),
            const TicketsViewBody(color: AppColor.coralRed),
          ],
        ),
      ),
    );
  }
}
