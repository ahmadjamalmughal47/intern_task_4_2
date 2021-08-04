import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var data = {
    Colors.pink: "some details about pink",
    Colors.yellow: "some details about yellow card",
    Colors.brown:
        "some details about brown card/n. some details about brown card/n. some details about brown card/n.",
    Colors.black: "some details about yellow card",
    Colors.grey.shade400: "some details about grey card",
    Colors.purple: "some details about purple card",
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ExpansionTile(
                title: SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    margin: EdgeInsets.all(5.0),
                    color: data.keys.elementAt(index),
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                ),
                children: [
                  Text(
                    data[data.keys.elementAt(index)].toString(),
                  )
                ],
              );
            }));
  }
}
