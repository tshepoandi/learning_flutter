import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  final String title;

  const MessagesPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Messages Page'),
      ),
    );
  }
}