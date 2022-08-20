
import 'package:flutter/material.dart';
import 'package:milk_man/new.dart';
import 'package:milk_man/homepage.dart';
import 'package:provider/provider.dart';
import 'basket.dart';
import 'strore.dart';
import 'database.dart';
import 'ProductListPage.dart';

import 'package:flutter/cupertino.dart';

import 'package:milk_man/basket.dart';
import 'package:milk_man/strore.dart';




void main() {
  runApp(
      ChangeNotifierProvider(create: (context){return  Store();},
      child: MaterialApp(

        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          ),
        home:  MyHomePage(title: ''),
      ),)  );
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex=0;
  final List<Widget> _children=[
    Home(),
    ProductListPage(),
    Account(),

  ];
  void ontappedbar(int index){
    setState(() {
      _currentIndex=index;
    });
}


  @override
  Widget build(BuildContext context) {
    var store=Provider.of<Store>(context);
    store.do1();

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Milk Man'),
        actions: [

          InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>Basket()));

              },
              child:Icon(Icons.shopping_basket, size: 40,)

          ),


        ],

      ),
      body: _children[_currentIndex],

      bottomNavigationBar: BottomNavigationBar
        ( onTap: ontappedbar,backgroundColor: Colors.black,unselectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.auto_awesome_mosaic_rounded), label: "Proucts"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_sharp), label: "Account"),


      ],
      ),

    );
  }
}
