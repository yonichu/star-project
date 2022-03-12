import 'package:flutter/material.dart';
import 'package:newproject/Planet_page.dart';
import 'package:newproject/nasa_news_page.dart';

class DomPage extends StatefulWidget {
  @override
  _DomPageState createState() => _DomPageState();
}

class _DomPageState extends State<DomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( 
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/pepe.jpg"),
                fit: BoxFit.cover,
            ),
          ),

          child: Stack(
            children: <Widget>[ 
                Column(
                    children: <Widget>[ new Padding(padding: 
                    const EdgeInsets.symmetric(horizontal: 200, vertical: 100)),
                      ElevatedButton(
                        child: const Text('Explore Planets!'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PlanetPage()),
                        );
                        },
                      ),
                    ElevatedButton(
                        child: const Text('See NASA News!'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NasaNewsPage()),
                        );
                        },
                      ),
                    ]
                )
            ]
          )
      ),
    );
  }
}
