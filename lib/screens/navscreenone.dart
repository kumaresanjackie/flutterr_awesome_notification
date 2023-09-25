import 'package:flutter/material.dart';

class NavScreenOne extends StatefulWidget {
  const NavScreenOne({super.key});

  @override
  State<NavScreenOne> createState() => _NavScreenOneState();
}

class _NavScreenOneState extends State<NavScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Nav Screen one"),),);
  }
}
