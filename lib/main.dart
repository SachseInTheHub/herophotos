import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pick a Hero',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(
        header: 'Pick a Hero',
        url:
            "https://cdn3.whatculture.com/images/2014/04/SuperiorSpiderMan_02.png",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.header, this.url}) : super(key: key);
  final String header;
  final String url;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _heroes = [
    "Spider-Man",
    "Thor",
    "Ironman",
    "Hulk",
    "Batman",
    "Superman",
    "Deadpool"
  ];

  List<String> _links = [
    "https://cdn3.whatculture.com/images/2014/04/SuperiorSpiderMan_02.png",
    "https://static.comicvine.com/uploads/original/9/96648/2834291-1265093_130_ultimate_comics_new_ultimates_4.jpg",
    "https://cdn3.whatculture.com/images/2014/04/SuperiorSpiderMan_02.png",
    "https://static.comicvine.com/uploads/original/9/96648/2834291-1265093_130_ultimate_comics_new_ultimates_4.jpg",
    "https://cdn3.whatculture.com/images/2014/04/SuperiorSpiderMan_02.png",
    "https://static.comicvine.com/uploads/original/9/96648/2834291-1265093_130_ultimate_comics_new_ultimates_4.jpg",
  ];

  String heroOrVilan(int i) {
    return i.isEven ? 'Hero 🦸🏻‍♀️' : "Vilan 🦹🏼‍♂️";
  }

  @override
  void initState() {
    super.initState();

    // _heroes = List.generate(100, (i) => '${heroOrVilan(i)}');
    _heroes = List.generate(100, (i) => '${heroOrVilan(i)}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.header),
        ),
        body: Center(
            child: ListView(
              children: _links.map((url) => Image.network(url)).toList())));
            // child: ListView(children: <Widget>[Image.network(widget.url)])));
  }
}

// class HeroesCards extends StatefulWidget {
//   String _url = "";

//   @override
//   State<StatefulWidget> createState() => HeroesCard(_url);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         children: <Widget>[
//           Image.network(_url),
//         ],
//       ),
//     );
//   }
// }
