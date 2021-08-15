import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static MaterialPageRoute path() =>
      MaterialPageRoute(builder: (context) => HomePage());

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Container();
}
