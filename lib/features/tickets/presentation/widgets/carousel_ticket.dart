import 'package:carousel_slider/carousel_slider.dart';
import 'package:cine_reserve_app/features/tickets/presentation/widgets/ticket_widget/custom_ticket.dart';
import 'package:flutter/material.dart';

class CustomCarouselTickets extends StatelessWidget {
  const CustomCarouselTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: listCard,
      options: CarouselOptions(
        aspectRatio: 3.5 / 4,
        enlargeCenterPage: true,
      ),
    );
  }
}

List<Widget> listCard = [
  const CustomTicket(
      image:
          "assets/images/test/The-Little-Mermaid-payoff-printed-key-art-v5 1.png"),
  const CustomTicket(image: "assets/images/test/Rectangle 10.png"),
];
