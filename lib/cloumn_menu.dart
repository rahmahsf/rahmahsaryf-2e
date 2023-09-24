import 'package:flutter/material.dart';

class columnWidget extends StatelessWidget {
  const columnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget column'),
      ),
      body: Column(
        children: const [
          Text('kolom 1'),
          Text('kolom 2'),
          Text('kolom 3'),
          Text('kolom 4')
        ],
      ),
    );
  }
}
