import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/constants.dart';
import 'package:newproject/swiper_data.dart';

class DetailPage extends StatefulWidget {
  final PlanetInfo planetInfo;
  const DetailPage({Key? key, required this.planetInfo}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(27.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Positioned(
                          right: 15,
                          top: 15,
                          child: Hero(
                            tag: widget.planetInfo,
                            child: Image.asset(widget.planetInfo.iconImage),
                          ),
                        ),
                        const ColoredBox(color: Colors.white),
                        Text(
                          widget.planetInfo.name,
                          style: GoogleFonts.poppins(
                            fontSize: 52.0,
                            fontWeight: FontWeight.w900,
                            color: primaryTextColor,
                          ),
                        ),
                        const Divider(color: Colors.white),
                        const SizedBox(height: 32.0),
                        Text(
                          widget.planetInfo.description,
                          maxLines: 150,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                              color: contentTextColor),
                        ),
                        const SizedBox(height: 32.0),
                        const Divider(color: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              color: Colors.white,
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
                
              },
            ),
          ],
        ),
      ),
    );
  }
}
