import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> list = [];

  @override
  void initState() {
    list = [new YellowColor(key: Key("1")), new PurpleColor(key: Key("2"))];
    super.initState();
  }

  void swap() {
    setState(() {
      list.insert(1, list.removeAt(0));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            swap();
            print(list.elementAt(0).key.hashCode);
          },
          child: Icon(Icons.cached),
        ),
        body: Container(
            color: Colors.white,
            child: Row(
              textDirection: TextDirection.ltr,
              children: <Widget>[]..addAll(list),
            )),
      ),
    );
  }
}

class YellowColor extends StatefulWidget {
  YellowColor({Key key}) : super(key: key);

  @override
  _YellowColorState createState() => _YellowColorState();
}

class _YellowColorState extends State<YellowColor> {
  int numbersOfFlowers = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.yellow,
      child: MaterialButton(
        onPressed: () {
          setState(() {
            numbersOfFlowers++;
          });
        },
        child: Text("Flr = $numbersOfFlowers"),
      ),
    );
  }
}

class PurpleColor extends StatefulWidget {
  PurpleColor({Key key}) : super(key: key);

  @override
  _PurpleColorState createState() => _PurpleColorState();
}

class _PurpleColorState extends State<PurpleColor> {
  int numbersOfBirds = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: Colors.purple,
      child: MaterialButton(
        onPressed: () {
          setState(() {
            numbersOfBirds++;
          });
        },
        child: Text("Birds = $numbersOfBirds"),
      ),
    );
  }
}
