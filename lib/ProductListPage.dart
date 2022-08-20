import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milk_man/basket.dart';
import 'package:milk_man/strore.dart';
import 'package:provider/provider.dart';
import 'ProductDetailPage.dart';


class ProductListPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){


    var store=Provider.of<Store>(context);
    store.do1();
    return Scaffold(
      backgroundColor: Colors.cyan,




      body:GridView.builder(
          itemCount: store.products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,i){
        return Container(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(child: InkWell(
                    onTap: (){
                      store.setActiveProducts(store.products[i]);
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetailPage()));
                    },
                      child: ClipOval(
                        child: Image.asset(store.products[i].pic),
                      ))),

                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(store.products[i].name,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),

        );
      }),
    );
  }

}