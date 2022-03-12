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
      backgroundColor: Colors.black26,
      body: InkWell(
          child: Stack(
            children: <Widget>[ 
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[ new Padding(padding: 
<<<<<<< Updated upstream
                    const EdgeInsets.symmetric(horizontal: 200, vertical: 100)),
                    new SizedBox(
                      width: 200.0,
                      height: 100.0,
                        child: ElevatedButton(
                          child: const Text('Explore Planets!'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PlanetPage()),
                            );
                          },
                        ),
                    ),
                    const SizedBox(height: 50),
                    new SizedBox(
                      width: 200.0,
                      height: 100.0,
                        child: ElevatedButton(
                            child: const Text('See NASA News!'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NasaNewsPage()),
                            );
                            },
                          ),
                      )
=======
                    const EdgeInsets.symmetric(horizontal: 200, vertical: 200)),
                      Text(
                        
                      ),
                      ElevatedButton(
                        child: const Text('Explore Planets!'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PlanetPage()),
                        );
                        },
                      ),
                      const SizedBox(height: 30),
                    ElevatedButton(
                        child: const Text('See NASA News!'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => NasaNewsPage()),
                        );
                        },
                      ),
>>>>>>> Stashed changes
                    ]
                )
            ]
          )
      ),
    );
  }
}
