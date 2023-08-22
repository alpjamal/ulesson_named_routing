import 'package:flutter/material.dart';
import 'package:navigation/router/name_route.dart';
import 'package:navigation/screen/second/page_args/second_page_args.dart';

class SecondPage extends StatefulWidget {
  final SecondPageArguments arguments;

  const SecondPage({
    super.key,
    required this.arguments,
  });

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.arguments.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              widget.arguments.title,
              style: const TextStyle(fontSize: 32),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (_) => ThirdPAge()));
                Navigator.pushNamed(context, Routes.third, arguments: 'Third Page');
              },
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
