import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Button2';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,

        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.yellow,
                onPrimary: Colors.red,
                textStyle: const TextStyle(fontSize: 15),
                shadowColor: Colors.black,
                elevation: 10,
            ),
            onPressed: (){},
            child: Text('RaisedButton'),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
              onPressed: (){},
              child: Text('FlatButton')
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
            onPressed: (){final snackBar = SnackBar(
              content: const Text('你按下RaisedButton'),
              duration: Duration(seconds: 3),
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              action: SnackBarAction(
                label: 'Toast訊息',
                textColor: Colors.white,
                onPressed: (){}
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);},
            child: Text('你按下SnackBar')),
          const SizedBox(height: 15),
          IconButton(
            icon: Icon(Icons.phone_android,color: Colors.blue),
            onPressed: (){},
            iconSize: 40,
          ),
          const SizedBox(height: 15),
          FloatingActionButton(
              onPressed: (){},
            child: const Icon(Icons.phone_android),
          ),
          const SizedBox(height: 15),
          ElevatedButton.icon(
            onPressed: (){},
            icon: Icon(Icons.phone_android),
            label: Text('RaisedButton.icon'),
            style: ElevatedButton.styleFrom(
              shadowColor: Colors.black,
              elevation: 10,
              onPrimary: Colors.red,
              primary: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
