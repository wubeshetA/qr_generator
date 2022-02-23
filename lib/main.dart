import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(MaterialApp(home: QrGenerator()));

class QrGenerator extends StatefulWidget {
  @override
  State<QrGenerator> createState() => _QrGeneratorState();
}

class _QrGeneratorState extends State<QrGenerator> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Generator"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QrImage(
                data: controller.text,
                size: 300,
              ),
              Container(
                margin: EdgeInsets.all(28),
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Enter Text'),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text("GENERATE QR"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
