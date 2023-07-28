import 'dart:math';

import 'package:dowell_qr_wifi/pages/share_qr_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dowell Wifi Qr Code'),
        elevation: 0,
        backgroundColor: Colors.lightGreenAccent,
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [Colors.lightGreenAccent, Colors.white],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Transform.rotate(
                  angle: 180 * pi / 360,
                  child: const Icon(Icons.pan_tool_alt),
                ),
                title: const Text(
                  'Create QR Code for Your WiFi',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: Transform.rotate(
                  angle: 180 * pi / 360,
                  child: const Icon(Icons.pan_tool_alt),
                ),
                title: const Text(
                  'Users can scan the QR code to connect without entering WiFi credentials',
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 10),
              ListTile(
                leading: Transform.rotate(
                  angle: 180 * pi / 360,
                  child: const Icon(Icons.pan_tool_alt),
                ),
                title: const Text(
                  'Read the disclaimer before continuing',
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ShareQRPage(),
                      ),
                    );
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text('Create QR Code'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
