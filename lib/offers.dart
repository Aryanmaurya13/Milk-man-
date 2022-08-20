import 'package:flutter/material.dart';
import 'package:milk_man/ProductListPage.dart';

class RecipeCard extends StatelessWidget {
  final String title;
  final String thumbnailUrl;
  final  link;


  RecipeCard({
    required this.title,
    required this.thumbnailUrl,
    required this.link,

  });

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [


      Container(
      margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.9),
            offset: Offset(
              0.0,
              10.0,
            ),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
        image: DecorationImage(



          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.35),
            BlendMode.multiply,
          ),
          image: ExactAssetImage(thumbnailUrl),
          fit: BoxFit.cover,

        ),
      ),


      child: Stack(
        children: [GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder:(context)=>link));

          },
        ),
          Align(
            child: Padding(
              padding: const EdgeInsets.only(top: 140.0,left: 10),
                child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(19),


                    ),

                  child: Text(title,

                    style: TextStyle(
                      fontSize: 19,
                      color: Colors.white70,
                    ),

                  ),

                  ),

                ],
              )


            ),

          ),
        ],



      ),
    ),


    ],
    );

  }
}