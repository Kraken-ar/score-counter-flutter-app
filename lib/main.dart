import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainWidget());
}

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  int team_a = 0;
  int team_b = 0;
  @override
  Widget build(BuildContext context) {
   

 

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Score Counter"),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      "Team A",
                      style: TextStyle(fontSize: 30),
                    ),
                  Text(
                      "$team_a",
                      style: TextStyle(fontSize: 150),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                          team_a++;

                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: ElevatedButton(
                        onPressed: () {
                            setState(() {
                          team_a+=2;

                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: const Text(
                          "Add 2 Points",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: ElevatedButton(
                        onPressed: () {
                            setState(() {
                          team_a+=3;

                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: const Text(
                          "Add 3 Points",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    //   Container(
                    //   // decoration: BoxDecoration(),
                    //   padding: const EdgeInsets.all(10.0),
                    //   margin: EdgeInsets.symmetric(vertical: 10),
                    //   color: Colors.orange,
                    //   child: const Text(
                    //     "Add 1 Point",
                    //     style: TextStyle(color: Colors.white),
                    //   ),
                    // ),
                    //    Container(
                    //   // decoration: BoxDecoration(),
                    //   padding: const EdgeInsets.all(10.0),
                    //   margin: EdgeInsets.symmetric(vertical: 10),
                    //   color: Colors.orange,
                    //   child: const Text(
                    //     "Add 2 Points",
                    //     style: TextStyle(color: Colors.white),
                    //   ),
                    // ),

                    //    Container(
                    //   // decoration: BoxDecoration(),
                    //   padding: const EdgeInsets.all(10.0),
                    //   margin: EdgeInsets.symmetric(vertical: 10),
                    //   color: Colors.orange,
                    //   child: const Text(
                    //     "Add 3 Points",
                    //     style: TextStyle(color: Colors.white),
                    //   ),
                    // ),
                  ],
                ),
                Container(
                  height: 500,
                  child: const VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 1,
                    endIndent: 1,
                                 
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "Team B",
                      style: TextStyle(fontSize: 30),
                    ),
                   Text(
                      "$team_b",
                      style: TextStyle(fontSize: 150),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: ElevatedButton(
                        onPressed: () {
                            setState(() {
                            team_b++;

                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: ElevatedButton(
                        onPressed: () {
                            setState(() {
                          team_b+=2;

                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: const Text(
                          "Add 2 Points",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                      child: ElevatedButton(
                        onPressed: () {
                            setState(() {
                          team_b+=3;

                          });
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange),
                        child: const Text(
                          "Add 3 Points",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
              margin:const EdgeInsets.symmetric(vertical: 5),
              child: ElevatedButton(
                onPressed: () {
                    setState(() {
                          team_a = 0;
                          team_b = 0;

                          });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                child: const Text(
                  "Reset",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
