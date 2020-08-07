import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

main() {
  runApp(MyApp());
}

mydate() async {
  var url = "http://192.168.43.139/cgi-bin/date.py";
  var r = await http.get(url);
  // var sc = r.statusCode;
  var data = r.body;
  print(data);
}

mycal() async {
  var url = "http://192.168.43.139/cgi-bin/cal.py";
  var r = await http.get(url);
  // var sc = r.statusCode;
  var data = r.body;
  print(data);
}

mybody() {
  return Column(
    children: <Widget>[
      RaisedButton(
        onPressed: mydate,
        child: Text('click for date cmd'),
      ),
      RaisedButton(
        onPressed: mycal,
        child: Text('click for cal cmd'),
      ),
    ],
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Web App'),
        ),
        body: mybody(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
