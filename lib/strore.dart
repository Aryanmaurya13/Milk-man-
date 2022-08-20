import 'package:flutter/material.dart';

import 'package:milk_man/Product.dart';

class Store extends ChangeNotifier {
List<Product> _products=[];
 List<Product> _basket=[];
  Product _activeProducts =null as Product ;


Store(){
  _products=[
    Product(id: 1, qty: 0, name: 'coco', price: 5, pic: 'assets/coco.jpg'),
    Product(id: 2, qty: 0, name: 'Almond', price: 6, pic: 'assets/download.jpg'),
    Product(id: 3, qty: 0, name: 'Skim milk', price: 10, pic: 'assets/skim.jpg'),
    Product(id: 4, qty: 0, name: 'Whole milk', price: 15, pic: 'assets/who.jpg'),
    Product(id: 5, qty: 0, name: 'Oat milk', price: 65, pic: 'assets/oat.jpg'),
    Product(id: 6, qty: 0, name: 'Goat milk', price: 40, pic: 'assets/goat.jpg'),
    Product(id: 7, qty: 0, name: 'Cream', price: 100, pic: 'assets/cream.jpg')

  ];
  notifyListeners();
}
List<Product> get products=> _products;
List<Product> get basket=> _basket;
Product get activeProducts=>_activeProducts;

do1(){
   _products[0].id=8;
}
setActiveProducts(Product p){
  _activeProducts=p;
 }
 addOneItemToBasket(Product p){
  Product found = _basket.firstWhere((a)=> a.id == p.id, orElse: ()=> null as Product);
  if(found!=null){
    found.qty+=1;
  }
  else{
    _basket.add(p);
  }
  notifyListeners();
}
removeOneItemToBasket(Product p){
  Product found = _basket.firstWhere((a)=> a.id == p.id);
  if(found!=null && found.qty==0){
    _basket.remove(p);
  }
  else{
    found.qty-=1;
  }
  notifyListeners();
}
getBasketQty(){
  int total=0;
  for(int i=0;i<basket.length;i++){
    total+= basket[i].qty;
  }
  return total;
}


}