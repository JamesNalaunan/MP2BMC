import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
// todo: implement build
    return MaterialApp(
    title: 'Hello BMC Flutter',
        home: Scaffold(
    appBar: AppBar(
        title: Text("Hello BMC Flutter"),
    backgroundColor: Colors.indigo,

    ),
            body:Builder(builder:(context)=>Center(
                child: Column(children: [
                  Text(
                    'BINI',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[900]),
                  ),
                  Text(
                    'WallPaper',
                    style: TextStyle(fontSize: 20, color: Colors.deepOrange),
                  ),
                  Image.network('https://th.bing.com/th/id/OIP.fbEA0VUXKKbfMqnHQ9eGSQHaK0?rs=1&pid=ImgDetMain',
                    height: 350,
                  ),
                  ElevatedButton(
                    child: Text('Contact us'),
                    onPressed: () => contactUs(context),
                  )
                ]
                )))));
  }
}

void contactUs(BuildContext context) {
  showDialog(context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('Mail us at biniverse.com'),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      }
  );
}


