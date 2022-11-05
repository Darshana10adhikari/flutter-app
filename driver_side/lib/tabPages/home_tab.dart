import 'package:flutter/material.dart';

class HometabPage extends StatefulWidget {
  const HometabPage({Key? key}) : super(key: key);

  @override
  State<HometabPage> createState() => _HometabPageState();
}

class _HometabPageState extends State<HometabPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Home"),
    );
  }
}
