import 'package:flutter/material.dart';
class Despro extends StatelessWidget {
  final String name;
  final  page;
  final String img;


  Despro({
    required this.name,
    required this.page,
    required this.img,

  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(child: InkWell(
        onTap: (){

      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
              child: ClipOval(

               child :Image(image: AssetImage(img),fit: BoxFit.cover),
            ))

            ),


            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(name,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ],

    );

  }}

