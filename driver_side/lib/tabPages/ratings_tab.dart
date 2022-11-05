import 'package:flutter/material.dart';

class RatingstabPage extends StatefulWidget {
  const RatingstabPage({Key? key}) : super(key: key);

  @override
  State<RatingstabPage> createState() => _RatingstabPageState();
}

class _RatingstabPageState extends State<RatingstabPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Ratings"),
    );
  }
}
