import 'package:flutter/material.dart';

class NavScreenTwo extends StatefulWidget {
  const NavScreenTwo({super.key});

  @override
  State<NavScreenTwo> createState() => _NavScreenTwoState();
}

class _NavScreenTwoState extends State<NavScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Nav Screen Two"),),);
  }
}
