import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 50,
            child: Card(
              child: Text('$index'),
            ),
          );
        },
      ),
    );
  }
}
