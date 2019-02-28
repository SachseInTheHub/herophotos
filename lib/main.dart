import 'package:flutter/material.dart';
import 'package:pick_a_hero/model/HeroData.dart';
import 'package:pick_a_hero/page/HeroDetailPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Pick A Hero",
      theme: new ThemeData.dark(),
      home: new ListPage(title: '🦸‍♀️ Heroes 🦸‍♂️'),
    );
  }
}

class ListPage extends StatefulWidget {
  final String title;

  ListPage({Key key, this.title}) : super(key: key);

  @override
  ListPageState createState() => ListPageState();
}

class ListPageState extends State<ListPage> {
  List _heroes;

  @override
  void initState() {
    super.initState();
    _heroes = getHeroes();
  }

  @override
  Widget build(BuildContext context) {
    
    Card createCard(HeroData data) => Card(
          color: Colors.black87,
          elevation: 16.0,
          child: Container(
              margin:
                  new EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
              child: ListTile(
                title: Text(
                  data.name,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPage(data: data)));
                },
              )),
        );

    final pageBody = Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _heroes.length,
        itemBuilder: (BuildContext context, int index) {
          return createCard(_heroes[index]);
        },
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(200, 100, 100, 130),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title),
      ),
      body: pageBody,
    );
  }
}

