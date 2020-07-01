import 'package:flutter/material.dart';

class Animation02MainScreen extends StatefulWidget {
  final title;

  Animation02MainScreen({@required this.title});
  @override
  _Animation02MainScreenState createState() => _Animation02MainScreenState();
}

class _Animation02MainScreenState extends State<Animation02MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('data'),
    );
  }
}