import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';

import 'dart:convert';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pick a Hero',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: MyHomePage(
        header: 'Pick a Hero',
        url:
            "https://cdn3.whatculture.com/images/2014/04/SuperiorSpiderMan_02.png",
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.header, this.url}) : super(key: key);
  final String header;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(header),
      ),
      body: FutureBuilder<List<HeroData>>(
        future: fetchPhotos(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? ListView(
                  padding: EdgeInsets.all(8.0),
                  children: snapshot.data
                      .map((json) => Image.network(json.url,
                          height: 200, fit: BoxFit.fitWidth))
                      .toList())
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

Future<List<HeroData>> fetchPhotos(http.Client client) async {
  final response =
      await client.get('https://api.jsonbin.io/b/5c72ff3f3f18a135eaf15509/4');

  return compute(parseHeroData, response.body);
}

List<HeroData> parseHeroData(String responseBody) {
  final parsedData = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsedData.map<HeroData>((json) => HeroData.fromJson(json)).toList();
}

class HeroData {
  final String name;
  final String url;

  HeroData({this.name, this.url});

  factory HeroData.fromJson(Map<String, dynamic> json) {
    return HeroData(name: json['name'] as String, url: json['url'] as String);
  }
}
