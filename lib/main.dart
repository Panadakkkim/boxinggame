import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(title: 'OLYMPIC BOXING SCORING'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/2020.png', width: 270.0),
            const Text('Women Light(57-60kg)Semi-final',
                style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.blueGrey,
                    fontSize: 19.0)),
            Row(
              children: [ Icon(
                Icons.person,
                // รูปไอคอน
                size: 90.0, color:Colors.red,
              ),
                Column(
                  children: [
                    Row(
                      children:[

                        Image.asset('assets/images/ire.png', width: 50.0),
                        const Text(': IRELAND '),
                      ],

                    ),
                    const Text( 'HARRINGTON Kellie Anne' ),
                  ],

                ),

              ],
            ),
            Row(
              children: [ Icon(
                Icons.person,
                // รูปไอคอน
                size: 90.0, color:Colors.blue,
              ),
                Column(
                  children: [
                    Row(
                      children:[
                        Image.asset('assets/images/thai.png', width: 50.0),
                        const Text(': THAILAND' ),
                      ],

                    ),
                    const Text( 'SEESONDEE Sudaporn' ),
                  ],

                ),

              ],

            ),
            Row(
              children: [
                Expanded(child: Container(color:Colors.red ,height: 4,)),
                Expanded(child: Container(color:Colors.blue ,height: 4,)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Container(color:Colors.red ,height: 4,)),
                Expanded(child: Container(color:Colors.blue ,height: 4,)),
              ],
            ),

          ],

        ),
      ),
    );
  }
}