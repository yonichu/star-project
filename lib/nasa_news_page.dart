import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Planet_trip/start_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'dart:convert';
//import 'package:flutter/dart.core';

// TAKING API DATA FROM JSON FILE/api.json
class Article {
  String source;
  String hdImageUrl;
  String mediaType;
  String description;
  String title;
  String date;

  Article(
      {required this.source ,
      required this.hdImageUrl,
      required this.mediaType,
      required this.description,
      required this.title,
      required this.date});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
        source: json["copyright"],
        title: json["title"],
        description: json["explanation"],
        hdImageUrl: json["hdurl"],
        date: json["date"],
        mediaType: json["media_type"]);
  }
}

// News Page
class NasaNewsPage extends StatefulWidget {
  @override
  _NasaNewsPageState createState() => _NasaNewsPageState();
}

class _NasaNewsPageState extends State<NasaNewsPage> {
  // String daily_description = Article().description; // DESCRIPTION
  // String image = Article().hdImageUrl; // HD IMAGE URL
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
        bottom: false,
        child: Stack(children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(27.0),
                  child: FutureBuilder<Article>(
                    future: _getArticle(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return CircularProgressIndicator();
                      }
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const ColoredBox(color: Colors.white),
                          Text(
                            snapshot.data?.title ?? "",
                            style: GoogleFonts.poppins(
                              fontSize: 52.0,
                              fontWeight: FontWeight.w900,
                              color: primaryTextColor,
                            ),
                          ),
                          const Divider(color: Colors.white),
                          const SizedBox(height: 32.0),
                          Text(
                            snapshot.data?.description ?? "",
                            maxLines: 150,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                fontSize: 20.0,
                                color: primaryTextColor),
                          ),
                          const SizedBox(height: 32.0),
                          const Divider(color: Colors.white),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  Future<Article> _getArticle() async {
    Map<String, String> api_json =
        jsonDecode(await rootBundle.loadString('assets/api.json'));
    Article article = Article.fromJson(api_json);
    return article;
  }
}
