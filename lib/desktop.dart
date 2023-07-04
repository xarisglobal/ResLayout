import 'package:flutter/material.dart';

class MyDeskTop extends StatelessWidget {
  const MyDeskTop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Squares"),
        ),
        body: Stack(
          children: [
            Boxes(
              colour: Color(0xFF9CCE52),
              height: 300,
              width: MediaQuery.of(context).size.width * 1,
            ),
            Boxes(
              colour: Color(0xFF33A1DE),
              height: 100,
              width: MediaQuery.of(context).size.width * 2 / 3,
            ),
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: Boxes(
                colour: Color(0xFFFFE854),
                height: 200,
                width: MediaQuery.of(context).size.width * 1 / 3,
              ),
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
    required this.height,
    required this.width,
  });
  final Color colour;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: colour,
      height: height,
      width: width,
    );
  }
}

// Color(0xFF33A1DE)
// Color(0xFFFFE854)
// Color(0xFF9CCE52)
// Color(0xFF555555)
// Color(0xFFFFE854)
// Color(0xFFF6A56F)