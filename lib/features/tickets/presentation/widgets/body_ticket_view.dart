import 'package:cine_reserve_app/features/tickets/presentation/widgets/ticket_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TicketsViewBody extends StatelessWidget {
  const TicketsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TicketClipper(holeRadius: 80.r),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(25.r),
          ),
          color: Colors.amber,
        ),
        width: 260,
        height: 460,
        padding: const EdgeInsets.all(35),
        child: const Text('second example'),
      ),
    );
  }
}
