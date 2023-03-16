import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  Screen2({Key? key}) : super(key: key);

  String text =
      "The first version of Flutter was known as Sky and ran on the Android operating system. It was unveiled at the 2015 Dart developer summit[8] with the stated intent of being able to render consistently at 120 frames per second.[9] During the keynote of Google Developer Days in Shanghai in September 2018, Google announced Flutter Release Preview 2, the last major release before Flutter 1.0. On December 4th of that year, Flutter 1.0 was released at the Flutter Live event, denoting the first stable version of the framework. On December 11, 2019, Flutter 1.12 was released at the Flutter Interactive event.[10]";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text(
                'Page title',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              background: Image.network(
                'https://picsum.photos/500/800',
                fit: BoxFit.cover,
              ),

            ),
          ),
          SliverToBoxAdapter(
            child: Text(text + text + text + text + text),
          ),
        ],
      ),
    );
  }
}
