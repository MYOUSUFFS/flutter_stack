// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: ContainerEdgeCurve(child: WidgetTitlesList()),
            ),
            Expanded(
              flex: 2,
              child: ContainerEdgeCurve(child: InsideOfWidget()),
            ),
            Expanded(
              flex: 6,
              child: ContainerEdgeCurve(child: WidgetInCode()),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerEdgeCurve extends StatelessWidget {
  final Widget child;
  const ContainerEdgeCurve({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}

class WidgetTitlesList extends StatelessWidget {
  const WidgetTitlesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(onTap: () {}, title: Text("Text")),
        ListTile(onTap: () {}, title: Text("Text Field")),
        ListTile(onTap: () {}, title: Text("Text")),
      ],
    );
  }
}

class InsideOfWidget extends StatelessWidget {
  const InsideOfWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("In the widget"));
  }
}

class WidgetInCode extends StatelessWidget {
  const WidgetInCode({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
