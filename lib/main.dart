import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "simple from",
      home: SimpleFrom()));
}

class SimpleFrom extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SimplFromState();
  }
}

class _SimplFromState extends State<SimpleFrom> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple From"),
      ),
      body: Container(
        margin: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userName) {
                setState(() {
                  name = userName;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Name is $name",
                style: TextStyle(fontSize: 25.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
