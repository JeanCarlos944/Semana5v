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
  int x = 0;
  int c1 = 0;
  int c2 = 0;
  int c3 = 0;
  int c4 = 0;
  int c5 = 0;

  // int inc100(int variable) {
  //   return (variable + 100);
  // }

  int sumar1(int variable) {
    return (variable + 1);
  }

  @override
  Widget build(BuildContext context) {
    //y++;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        floatingActionButton: FloatingActionButton(
          child: Text(
            "RESET",
            style: TextStyle(color: Colors.red),
          ),
          onPressed: () {
            print("RESET");
            c1 = 0;
            c2 = 0;
            c3 = 0;
            c4 = 0;
            c5 = 0;
            x=0;
            setState(() {
            });
          },
          backgroundColor: Colors.blueAccent,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "Contador1",
                      style: TextStyle(color: Colors.yellow),
                    ),
                    Text(
                      c1.toString(),
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.yellow,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        //c1=sumar1(c1);
                        c1++;
                        x = sumar1(x);
                        setState(() {});
                      },
                      child: Text("Add"),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Contador2",
                      style: TextStyle(color: Colors.yellow),
                    ),
                    Text(
                      c2.toString(),
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.yellow,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        c2 = sumar1(c2);
                        x = sumar1(x);
                        setState(() {});
                      },
                      child: Text("Add"),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "Contador3",
                      style: TextStyle(color: Colors.yellow),
                    ),
                    Text(
                      c3.toString(),
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.yellow,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        //c1=sumar1(c1);
                        c3++;
                        x = sumar1(x);
                        setState(() {});
                      },
                      child: Text("Add"),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Contador4",
                      style: TextStyle(color: Colors.yellow),
                    ),
                    Text(
                      c4.toString(),
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.yellow,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        c4 = sumar1(c4);
                        x = sumar1(x);
                        setState(() {});
                      },
                      child: Text("Add"),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "Contador5",
                      style: TextStyle(color: Colors.yellow),
                    ),
                    Text(
                      c5.toString(),
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.yellow,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        //c1=sumar1(c1);
                        c5++;
                        x = sumar1(x);
                        setState(() {});
                      },
                      child: Text("Add"),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
