import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MessagesPage extends StatefulWidget {
  final String title;

  const MessagesPage({Key? key, required this.title}) : super(key: key);

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  Future<List<dynamic>> fetchData() async {
    final response = await http.get(Uri.parse('https://api.example.com/messages'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to fetch data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // Data has been successfully fetched
            List<dynamic> messages = snapshot.data!;
            return ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                return ListTile(
                  title: Text(message['title']),
                  subtitle: Text(message['content']),
                );
              },
            );
          } else if (snapshot.hasError) {
            // Error occurred while fetching data
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            // Data is still loading
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
