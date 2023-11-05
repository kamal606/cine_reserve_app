import 'package:flutter/material.dart';

class SectionImageReversation extends StatelessWidget {
  const SectionImageReversation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 1.4,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        "assets/images/test/The-Little-Mermaid-payoff-printed-key-art-v5 1.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
