import "package:flutter/material.dart";

class MyMobile extends StatelessWidget {
  const MyMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Squares"),
      ),
      body: Column(children: [
        const Row(
          children: [
            Boxes(
              colour: Color(0xFF33A1DE),
              flex: 2,
              height: 100,
            ),
            Boxes(
              colour: Color(0xFFFFE854),
              flex: 1,
              height: 100,
            ),
          ],
        ),
        Row(
          children: [
            const Boxes(
              colour: Color(0xFF9CCE52),
              flex: 1,
              height: 200,
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const Row(
                    children: [
                      Boxes(
                        colour: Color(0xFF555555),
                        flex: 1,
                        height: 100,
                      ),
                      Boxes(
                        colour: Color(0xFFFFE854),
                        flex: 1,
                        height: 100,
                      )
                    ],
                  ),
                  // Boxes(colour: Colors.blue, flex: 1, height: 100)
                  Container(
                    color: Color(0xFFF6A56F),
                    height: 100,
                  )
                ],
              ),
            )
          ],
        ),
      ]),
    ));
  }
}

class Boxes extends StatelessWidget {
  const Boxes({
    super.key,
    required this.colour,
    required this.flex,
    required this.height,
  });
  final Color colour;
  final int flex;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Container(
        color: colour,
        height: height,
      ),
    );
  }
}

