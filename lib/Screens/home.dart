import 'package:device_manager/Components/device_item.dart';
import 'package:device_manager/data/data.dart';
import 'package:flutter/material.dart';
import 'package:device_manager/Models/Device.dart';

class HomeDevices extends StatefulWidget {
  const HomeDevices({Key? key}) : super(key: key);

  @override
  State<HomeDevices> createState() => _HomeDevicesState();
}

class _HomeDevicesState extends State<HomeDevices> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text('HOME-DEVICES'),
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Device Manager'),
              ),
              ListTile(
                title: const Text('Home'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                },
              ),
              ListTile(
                title: const Text('Favorites'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/home');
                },
              ),
            ],
          ),
        ),
        body: GridView.count(
            crossAxisCount: 4,
            childAspectRatio: 3 / 2,
            children: DUMMY_DEVICES.map((device) {
              return DeviceItem(device);
            }).toList()),
      ),
    );
  }
}
