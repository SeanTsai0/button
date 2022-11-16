import 'package:flutter/material.dart';

void main() => runApp(const SnackBarDemo());

class SnackBarDemo extends StatelessWidget {
  const SnackBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SnackBar Demo'),
        ),
        body: const SnackBarPage(),
      ),
    );
  }
}

class SnackBarPage extends StatelessWidget {
  const SnackBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final snackBar = SnackBar(
            content: const Text('Yay! A SnackBar!'),
            action: SnackBarAction(
              label: 'Undo',
              onPressed: () {
                // Some code to undo the change.
              },
            ),
          );

          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Show SnackBar'),
      ),
    );
  }
}

SnackBar(
content: Text(msg),
duration: Duration(seconds: 3),
backgroundColor: Colors.blue,
shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
action: SnackBarAction(
label: 'Toast訊息',
textColor: Colors.white,
onPressed: () => Fluttertoast.showToast(
msg:'你按下SnackBar',
toastLength: Toast.LENGTH_LONG,
gravity: ToastGravity.CENTER,
backgroundColor: Colors.blue,
textColor: Colors.white,
fontSize: 20.0),
),
),