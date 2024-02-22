import 'package:flutter/material.dart';
import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final flutterReactiveBle = FlutterReactiveBle();

  scanDevices() async {
    flutterReactiveBle.scanForDevices(
        withServices: [], scanMode: ScanMode.lowLatency).listen((device) {
      //code for handling results
      print(DiscoveredDevice);
      // ignore: argument_type_not_assignable_to_error_handler
    }, onError: () {
      //code for handling error
    });
  }

  @override
  Widget build(BuildContext context) {
    scanDevices();
    return const Placeholder();
  }
}
