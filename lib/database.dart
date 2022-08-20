import 'package:flutter/material.dart';
import 'package:milk_man/design/despro.dart';
import 'detail/Almond.dart';
import 'detail/cocomilk.dart';
import 'detail/cream.dart';
import 'detail/goat.dart';
import 'detail/oat.dart';
import 'detail/Skim.dart';
import 'detail/whole.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  State<test> createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/ml.PNG'),fit: BoxFit.cover)),
        ),
    GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      children: [
        Despro(name: 'coco' , page: Cocomilk(),img: 'assets/coco.jpg'),
        Despro(name: 'Almond', page: Cocomilk(),img: 'assets/download.jpg'),
        Despro(name: 'Skim Milk', page: Cocomilk(),img: 'assets/skim.jpg'),
        Despro(name: 'Whole Milk',page: Cocomilk(), img: 'assets/who.jpg'),
        Despro(name: 'Goat milk', page: Cocomilk(),img: 'assets/goat.jpg'),
        Despro(name: 'Oat Milk', page: Cocomilk(),img: 'assets/oat.jpg'),
        Despro(name: 'Cream', page: Cocomilk(),img: 'assets/cream.jpg')

      ],

    )
      ],
    );
  }
}
