import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'strore.dart';


class Basket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var store =Provider.of<Store>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Basket"),

      ),
      body: ListView.builder(
          itemCount:store.basket.length,
          itemBuilder: (BuildContext context, int i){
            return Stack(
              children: [
                Container(decoration: BoxDecoration(

                ),

                  child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(child: Text(store.basket[i].name,style: TextStyle(fontSize: 30),),),
                      Container(child:Text(store.basket[i].qty.toString(),style: TextStyle(fontSize: 30),)),
                      Container(child: Image.asset(store.basket[i].pic),),
             ],

                  ),
                )
              ],
            );

          },)


    );
  }



}


