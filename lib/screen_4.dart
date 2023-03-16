import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
        child: TextField(
          decoration: InputDecoration(
            labelText: '     Search     ',
            labelStyle: const TextStyle(color: Colors.purple),

            hintText: 'Введите значение',
            helperText: 'Поле для поиска заметок',
            suffixIcon: const Icon(
              Icons.search,
              color: Colors.purple,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.purple),

            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Colors.purple),
            ),
          ),
        ),
      ),
    );
  }
}
