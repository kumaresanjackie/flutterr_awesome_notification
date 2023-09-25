import 'package:flutter/material.dart';

class NavScreenThree extends StatefulWidget {
  const NavScreenThree({super.key});

  @override
  State<NavScreenThree> createState() => _NavScreenThreeState();
}

class _NavScreenThreeState extends State<NavScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Nav Screen Three"),),);
  }
}
