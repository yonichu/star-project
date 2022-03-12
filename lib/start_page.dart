import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/pepe.jpg"),
                fit: BoxFit.cover,
            ),
          ),

          child: Stack(
            children: <Widget>[ 
                Column(
                    children: <Widget>[ const Padding(padding: 
                    EdgeInsets.symmetric(horizontal: 200, vertical: 80)),
                    Text(
                      'Planet Trip',
                      //style: TextStyle(color: Colors.white, fontSize: 80, fontFamily: 'Bauhaus 93'),
                      style: GoogleFonts.baumans(fontSize: 80, color: Colors.white)
                    ),
                    SizedBox(height: 80),
                    SizedBox(
                      width: 200.0,
                      height: 100.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, 
                            side: const BorderSide(width: 2, 
                            color: Color.fromARGB(255, 29, 83, 128))
                            ),
                          
                          child: Text(
                            'Explore Planets!',
                            style: GoogleFonts.poppins(
                              fontSize: 20
                            )),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PlanetPage()),
                            );
                          },
                        ),
                    ),
                    const SizedBox(height: 50),
                    SizedBox(
                      width: 200.0,
                      height: 100.0,
                      
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent, 
                            side: const BorderSide(width: 2, 
                            color: Color.fromARGB(255, 29, 83, 128))
                            ),
                            child: Text(
                              'See NASA News!',
                              style: GoogleFonts.poppins(
                                fontSize: 20
                              )),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NasaNewsPage()),
                            );
                            },
                          ),
                      )
                    ]
                )
            ]
          )
      ),
    );
  }
}
