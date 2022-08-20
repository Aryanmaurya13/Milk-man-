

import 'package:flutter/material.dart';
import 'package:milk_man/strore.dart';
import 'package:provider/provider.dart';
class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    var store=Provider.of<Store>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Stack(
        children: [
          Image.asset(store.activeProducts.pic,height: MediaQuery.of(context).size.height/1.2,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,),
          Align(
            alignment: Alignment.bottomCenter,
            child:Container(
              height: MediaQuery.of(context).size.height/2.2,width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Container(height:100,
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(child: Text(store.activeProducts.name,style: TextStyle(fontSize: 30),),),

                        ],
                      )
                  ),
                  Container(height: 60,
                    child: Text('Aids in hydration. While comparable to sports drinks, which can be loaded with added sugars and flavorings'),
                  ),
                  Container(
                    child:Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Text('Normal price : Rs.65', style: TextStyle(fontSize: 20)),
                        ),
                        Container(
                          child: Text('VIP price: Rs.55',style: TextStyle(fontSize: 20)),
                        )
                      ],
                    ),
                  ),
                  /* Container(
                  child: FloatingActionButton(child: Text('Add to basket'), onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Basket(count: count)));})

                ),*/
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         IconButton(onPressed: (){store.addOneItemToBasket(store.activeProducts);}, icon: Icon(Icons.add)),
                        Container( child:Text(store.activeProducts.qty.toString()) ,),
                        IconButton(onPressed: (){store.removeOneItemToBasket(store.activeProducts);}, icon: Icon(Icons.remove)),
                      ],

                    ),
                  )

                ],
              ),


            ),
          ),

        ],


      )
    );
  }
}
