import 'package:flutter/material.dart';

myapp() {
  var mybody = Container(
    width: 300,
    height: 300,
    // color: Colors.red,
    alignment: Alignment.bottomCenter,
    child: Text(
      'HONI PIPLE',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    ),
    decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://github.com/honipiple/honi/raw/0310c8147d0a6702046a064f719ae026a5c72919/honi.jpg',
          ),
        ),
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          width: 5,
          color: Colors.grey.shade500,
        )),
  );

  var myhome = Scaffold(
    appBar: AppBar(
      title: Text('HONI APP'),
      backgroundColor: Colors.amberAccent,
    ),
    body: Center(child: mybody),
  );

  return MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
}
