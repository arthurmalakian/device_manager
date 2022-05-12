import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../Models/Device.dart';

class DeviceItem extends StatelessWidget {
  final Device device;

  const DeviceItem(this.device);

  void _selectedDevice(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: device.color,
            onPrimary: Colors.white,
          ),
          onPressed: () {},
          child: Column(
              children: [Text(device.title), Icon(Icons.device_unknown)]),
        ));
  }
}
