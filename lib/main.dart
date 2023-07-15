import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamApoint = 0;

  int teamBpoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Points Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$teamApoint',
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          setState(() {
                            teamApoint++;
                          });

                        },
                        child: const Text('Add 1 point',style: TextStyle(fontSize: 19,color: Colors.black),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamApoint += 2;
                          });
                        },
                        child: const Text('Add 2 point',style: TextStyle(fontSize: 19,color: Colors.black),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamApoint += 3;
                          });
                        },
                        child: const Text('Add 3 point',style: TextStyle(fontSize: 19,color: Colors.black),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 500,
                    child: const VerticalDivider(
                      thickness: 2,
                      color: Colors.grey,
                      indent: 20,
                      endIndent: 30,
                    ),
                ),
                Container(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                     const Text(
                        'Team B',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        '$teamBpoint',
                        style: const TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBpoint ++;
                          });
                        },
                        child: const Text('Add 1 point',style: TextStyle(fontSize: 19,color: Colors.black),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBpoint += 2;
                          });
                        },
                        child: const Text('Add 2 point',style: TextStyle(fontSize: 19,color: Colors.black),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBpoint += 3;
                          });
                        },
                        child: const Text('Add 3 point',style: TextStyle(fontSize: 19,color: Colors.black),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  teamApoint = 0;
                  teamBpoint = 0;
                });
              },
              child: const Text('Reset',style: TextStyle(fontSize: 19,color: Colors.black),),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: const Size(150, 50),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
