import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  int x = 100;
  int y = 200;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          Text(
            x.toString(),
            style: TextStyle(color:Colors.red,),
          ),
        ]),
      ),
    );
  }
}
