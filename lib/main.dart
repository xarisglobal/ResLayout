import "package:flutter/material.dart";
import "mobile.dart";
import "tablet.dart";
import "desktop.dart";

void main() {
  runApp(const MyResLayout());
}

class MyResLayout extends StatelessWidget {
  const MyResLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return const MyMobile();
        }
        if (constraints.maxWidth > 600 && constraints.maxWidth < 1024) {
          return const MyTablet();
        } else {
          return const MyDeskTop();
        }
      },
    );
  }
}
