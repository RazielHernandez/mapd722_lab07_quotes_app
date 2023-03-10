import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("First Quote"),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
                fixedSize: Size.fromWidth(100),
                padding: EdgeInsets.all(10),
              ),
              child: Text("Press Here"),
              onPressed: () {
                //Code Here
              },
            )
        ]),
      ),
    );
  }

}