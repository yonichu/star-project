import 'package:flutter/material.dart';
import 'package:newproject/start_page.dart';
//import 'package:flutter/dart.core';

class NasaNewsPage extends StatefulWidget {
  @override
  _NasaNewsPageState createState() => _NasaNewsPageState();
}

class _NasaNewsPageState extends State<NasaNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
      
        backgroundColor: Colors.transparent,
        leading: IconButton(icon:const Icon(Icons.arrow_back_ios), onPressed: () {
          Navigator.of(context).maybePop();
        },
        color: Colors.white),
      ),
    );
  }
}

class Article
{
  String source;
  String hdImageUrl;
  String mediaType; 
  String description; 
  String title; 
  String date; 
  
  Article(
    {
    this.source = '',
    this.hdImageUrl = '',
    this.mediaType = '', 
    this.description = '', 
    this.title = '',
    this.date = ''});
  
  factory Article.fromJson(Map<String, dynamic> json){

    return Article(
      source: json['copyright'], 
      title: json['title'],
      description: json['explanation'],
      hdImageUrl: json['hdurl'], 
      date: json['date'], 
      mediaType: json['media_type']);
      
  }
}