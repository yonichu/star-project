import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Planet_trip/start_page.dart';
import 'package:Planet_trip/detail_page.dart';
import 'package:Planet_trip/swiper_data.dart';
import 'constants.dart';

class PlanetPage extends StatefulWidget {
  const PlanetPage({Key? key}) : super(key: key);

  @override
  _PlanetPageState createState() => _PlanetPageState();
}

class _PlanetPageState extends State<PlanetPage> {
  static int _swiperIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).maybePop();
            },
            color: Colors.white),
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/pepe.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(65.0),
                    child: Column(
                      children: <Widget>[],
                    ),
                  ),
                  Container(
                    height: 600.0,
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Swiper(
                      index: _swiperIndex,
                      onIndexChanged: (index) {
                        _swiperIndex = index;
                        print(_swiperIndex);
                      },
                      // autoplay: true,
                      itemCount: planets.length,
                      itemWidth: MediaQuery.of(context).size.width - 3 * 64,
                      layout: SwiperLayout.STACK,
                      pagination: const SwiperPagination(
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
                              Hero(
                                  tag: planets[index],
                                  child: Column(
                                    children: <Widget>[
                                      Image.asset(planets[index].iconImage),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Text(planets[index].name,
                                          style: TextStyle(
                                              color: _swiperIndex == index ? Colors.white : Colors.transparent,
                                              fontSize: 30)),
                                    ],
                                  )),
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
