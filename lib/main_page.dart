import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/detail_page.dart';
import 'package:newproject/swiper_data.dart';
import 'constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/NC9ufI.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Planeto',
                          style: GoogleFonts.poppins(
                            fontSize: 44.0,
                            fontWeight: FontWeight.w900,
                            color: titleTextColor,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 500.0,
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Swiper(
                      // autoplay: true,
                      itemCount: planets.length,
                      itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                      layout: SwiperLayout.STACK,
                      pagination: SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                          activeSize: 15.0,
                          space: 8.0,
                        ),
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (context, a, b) => DetailPage(
                                  planetInfo: planets[index],
                                ),
                              ),
                            );
                          },
                          child: Stack(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  SizedBox(height: 100.0),
                                  Card(
                                    elevation: 8.0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32),
                                    ),
                                    color: Colors.transparent,
                                    child: Padding(
                                      padding: const EdgeInsets.all(32.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,

                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Positioned(
                                bottom: 50.0,
                                right: 0,
                                child: Text(
                                  planets[index].position.toString(),
                                  style: GoogleFonts.poppins(
                                    fontSize: 150.0,
                                    fontWeight: FontWeight.w900,
                                    color: primaryTextColor.withOpacity(0.15),
                                  ),
                                ),
                              ),
                              Hero(
                                tag: planets[index].position,
                                child: Image.asset(planets[index].iconImage),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      
    );
  }
}
