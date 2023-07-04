import "package:flutter/material.dart";

class MyTablet extends StatelessWidget {
  const MyTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Squares"),
        ),
        body: const Column(
          children: [
            Boxes(
              colour: Color(0xFF33A1DE),
            ),
            Boxes(
              colour: Color(0xFFFFE854),
            ),
            Boxes(
              colour: Color(0xFF9CCE52),
            ),
            Boxes(
              colour: Color(0xFF555555),
            ),
            Boxes(
              colour: Color(0xFFF6A56F),
            ),
          ],
        ),
      ),
    );
  }
}

class Boxes extends StatelessWidget {
  const Boxes({
    super.key,
    required this.colour,
  });
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: colour,
        height: 100,
      ),
    );
  }
}
