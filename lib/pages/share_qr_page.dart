import 'package:flutter/material.dart';

class ShareQRPage extends StatefulWidget {
  const ShareQRPage({super.key});

  @override
  State<ShareQRPage> createState() => _ShareQRPageState();
}

final recipientName = TextEditingController();
final recipientEmail = TextEditingController();
final subject = TextEditingController();
final clientEmail = TextEditingController();

class _ShareQRPageState extends State<ShareQRPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Email QR Code'),
        elevation: 0,
        backgroundColor: Colors.green,
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const ListTile(
                  leading: Icon(Icons.wifi),
                  title: Text('WiFi Name'),
                  subtitle: Text('WiFi Network'),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Image.network(
                    'https://www.cilips.org.uk/wp-content/uploads/2021/09/qr-code-7.png',
                    height: 200,
                    width: 200,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 2),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormField(
                        controller: recipientName,
                        decoration: const InputDecoration(
                          labelText: 'Recipient Name',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                          labelStyle: TextStyle(color: Colors.green),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: recipientEmail,
                        decoration: const InputDecoration(
                          labelText: 'Recipient Email',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                          labelStyle: TextStyle(color: Colors.green),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: subject,
                        decoration: const InputDecoration(
                          labelText: 'Subject',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                          labelStyle: TextStyle(color: Colors.green),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextFormField(
                        controller: clientEmail,
                        decoration: const InputDecoration(
                          labelText: 'Client Email',
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green),
                          ),
                          labelStyle: TextStyle(color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Add your action for when the button is pressed.
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text('Email the QR Code'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
