import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:milk_man/offers.dart';
import 'ProductListPage.dart';
import 'offers.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {




    return Stack(

      children: [
        Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/kk.PNG'),fit: BoxFit.cover)),
        ),
        ListView(
          children: [
            RecipeCard(title: ' DAILY OFFER ', thumbnailUrl: 'assets/first.jpeg' ,link: ProductListPage(),),
            RecipeCard(title: ' WEEKLY OFFER ', thumbnailUrl: 'assets/week.jpeg',link: ProductListPage(),),
            RecipeCard(title: ' SPECIAL OFFER ', thumbnailUrl: 'assets/3.jpeg',link:ProductListPage()),
            RecipeCard(title: ' LUCKY OFFER ', thumbnailUrl: 'assets/f.jpeg',link: ProductListPage(),),

          ],
        ),
      ],

    );



  }
}
