import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milk_man/basket.dart';
class Cocomilk extends StatefulWidget {
  const Cocomilk({Key? key}) : super(key: key);

  @override
  State<Cocomilk> createState() => _CocomilkState();
}


class _CocomilkState extends State<Cocomilk> {
  int  count=0;



  void  _increase() {
    setState(() {
      count=count+1;
    });}
  void _decrease(){
    if(count<1){
      return;
    }
    setState(() {
      count--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/coco.jpg',height: MediaQuery.of(context).size.height/1.5,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,),
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
                      Container(child: Text('Coconut Water',style: TextStyle(fontSize: 30),),),
                      Container(child: Row(
                        children: [FloatingActionButton(
                          child: Icon(CupertinoIcons.add),
                            onPressed: _increase),
                          Text("${count}",style: TextStyle(fontSize: 30),
                          ),
                          FloatingActionButton(child: Icon(Icons.remove),
                              onPressed: _decrease),
                        ],
                      ),)
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

              ],
            ),


    ),
        ),
        ],

      ),
    );
  }

}
