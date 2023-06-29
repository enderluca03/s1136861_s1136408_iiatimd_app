import 'package:flutter/material.dart';
import 'package:coochie_clicker/library/globals.dart' as globals;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void incrementCounter() {
    setState(() {
      globals.counter = globals.counter + (globals.fingerPower * globals.multiplier);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Your Total Coochies:',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              '${globals.counter}',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )

            ),
          SizedBox(
            width: 150,
            height: 150,
            child: FloatingActionButton(
              onPressed: incrementCounter,
              tooltip: 'Increment',
              backgroundColor: Colors.transparent,
              mini: false,
              materialTapTargetSize: MaterialTapTargetSize.padded,
              heroTag: null,
              elevation: 6.0,
              child: const Image(
                width: 1069, // Adjust the width as per your requirement
                height: 1069, // Adjust the height as per your requirement
                image: AssetImage('assets/images/cookie.png'),
              ),
            ),
          ),
          ],
        ),
      ),
    );
  }
}