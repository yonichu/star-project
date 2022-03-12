import 'package:flutter/material.dart';
import 'package:newproject/Planet_page.dart';
import 'package:newproject/nasa_news_page.dart';

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
      body: InkWell(
          child: Stack(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    ElevatedButton(
                      child: const Text('Explore Planets!'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PlanetPage()),
                       );
                      },
                    ),
                   /* TextButton(
                      child: const Text('See NASA News!'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NasaNewsPage()),
                       );
                      },
                    ),*/
                  ]
              )
            ]
          )
      ),
    );
  }
}
