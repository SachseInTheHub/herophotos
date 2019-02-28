import 'package:flutter/material.dart';
import 'package:pick_a_hero/model/HeroData.dart';

class DetailPage extends StatelessWidget {
  final HeroData data;

  DetailPage({Key key, this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Container(
          color: Colors.black,
          child: ListView(
            children: <Widget>[
              new Container(
                child: Image.network(data.imageUrl),
              ),
              Column(
                children: <Widget>[
                  Center(
                      child: Column(
                    children: <Widget>[
                      Text(
                        data.name,
                        textScaleFactor: 4,
                      ),
                      Padding(
                          padding: const EdgeInsets.all(30),
                          child: Text("${data.originStory}",
                              textAlign: TextAlign.center))
                    ],
                  ))
                ],
              ),
            ],
          ),
        ));
  }
}