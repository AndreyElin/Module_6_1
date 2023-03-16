import 'package:flutter/material.dart';

class SimpleCard extends StatelessWidget {
  const SimpleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        width: 100,
        color: Colors.green,
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  Screen3({Key? key}) : super(key: key);

  final List<Widget> _data = List.generate(100, (index) {
    return const SimpleCard();
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              double width = constraints.constrainWidth();
              return width < 500
                  ? ListView(
                      scrollDirection: Axis.horizontal,
                      children: [..._data.map((item) => item)],
                    )
                  : ListView(
                      scrollDirection: Axis.vertical,
                      children: [..._data.map((item) => item)],
                    );
            },
          )),
        ],
      ),
    );
  }
}
