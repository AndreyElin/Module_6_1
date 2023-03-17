import 'package:flutter/material.dart';

class SimpleCard extends StatelessWidget {
  const SimpleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 100,
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
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double width = constraints.constrainWidth();
            return width < 500
                ? ListView.builder(
                    itemCount: _data.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => SizedBox(
                      width: 100,
                      child: _data[index],
                    ),
                  )
                : ListView.builder(
                    itemCount: _data.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) => _data[index],
                  );
          },
        ),
      ),
    );
  }
}
