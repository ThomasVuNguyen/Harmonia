import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardX extends StatefulWidget {
  const CardX({super.key, required this.id});
  final String id;
  @override
  State<CardX> createState() => _CardState();
}

class _CardState extends State<CardX> {
  bool loaded = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: loaded? Text(widget.id.toString()) :Text("loading"),
    );
  }
}
