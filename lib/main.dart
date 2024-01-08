import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int x = 100;
  int y = 200;

  int inc100(int variable) {
    return (variable + 100);
  }

  void sumar100() {
    x += 100;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    y++;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("RESET");
          },
          backgroundColor: Colors.redAccent,
        ),
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                x.toString(),
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.red,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                sumar100();
                // x=inc100(x);
                // setState(() {});
                // print(x);
              },
              child: Text("Cambiar Valor"),
            ),
            Container(
              height: 200,
              color: Colors.red,
              child: Column(
                children: [
                  Text(
                    y.toString(),
                    style: TextStyle(
                      fontSize: 50,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
