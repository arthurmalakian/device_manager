import 'package:flutter/material.dart';

class Device {
  final int id;
  final String title;
  final Color color;
  final bool state;
  const Device(
      {required this.id,
      required this.title,
      this.color = Colors.blueGrey,
      this.state = false});
}
