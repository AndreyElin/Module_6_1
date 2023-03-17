import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 50,
            child: Card(
              child: Text('$index'),
            ),
          );
        }, separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: 25,
      ),
    );
  }
}
