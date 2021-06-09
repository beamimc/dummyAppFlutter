import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback select;
  Answer(this.select);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.yellow,
        child: Text('Answer1'),
        onPressed: select,
      ),
    );
  }
}
