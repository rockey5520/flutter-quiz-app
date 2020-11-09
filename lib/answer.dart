import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String ansewerText;

  Answer(this.selectHandler, this.ansewerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(ansewerText),
        onPressed: selectHandler,
      ),
    );
  }
}
