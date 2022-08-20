import 'package:flutter/material.dart';

class Prodesign extends StatefulWidget {
  final String imz;
  final String name;
  Prodesign({
    required this.imz,
    required this.name,
  });



  @override

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image:  ExactAssetImage(imz),)
      ),
      child: Text(name),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}




