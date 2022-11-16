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
                textStyle: const TextStyle(fontSize: 20),
                shadowColor: Colors.black,
                elevation: 10,
            ),
            onPressed: (){},
            child: Text('RaisedButton'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,

              textStyle: const TextStyle(fontSize: 20)
            ),
              onPressed: (){},
              child: Text('FlatButton')
          ),
          const SizedBox(height: 30),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              primary: Colors.black,
              side: BorderSide(width: 2,color: Colors.red),
            ),
            onPressed: (){},
            child: Text('OutLineButton')
          ),
        ],
      ),
    );
  }
}
