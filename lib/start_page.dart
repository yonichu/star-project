
import 'package:flutter/material.dart';
import 'package:newproject/Planet_page.dart';

class DomPage extends StatefulWidget {
  @override
  _DomPageState createState() => _DomPageState();
}

class _DomPageState extends State<DomPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PlanetPage()),
            );
          },
        ),
      ),
    );
  }
}

