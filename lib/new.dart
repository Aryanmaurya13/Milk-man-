import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
    Container(
    decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/bh.PNG'),fit: BoxFit.cover)),
    ),
    ListView(
    children: <Widget>[
    Card(child: ListTile(title: Text('Account'), subtitle: Text('Manage your account'), leading: Icon(Icons.person))),
    Card(child: ListTile(title: Text('Orders'), subtitle: Text('Details of all order'), leading: Icon(Icons.shopping_bag))),
    Card(child: ListTile(title: Text('Subscription'), subtitle: Text('Manage your subscription'), leading: Icon(Icons.book))),
    Card(child: ListTile(title: Text('Rewards'), subtitle: Text('Manage your subscription'), leading: Icon(CupertinoIcons.gift))),
    Card(child: ListTile(title: Text('Refer'), subtitle: Text('Refer and earn'), leading: Icon(CupertinoIcons.share))),
    Card(child: ListTile(title: Text('Contact Us'), subtitle: Text('Customer care'), leading: Icon(Icons.contact_phone))),
    Card(child: ListTile(title: Text('Set Reminder'), subtitle: Text('Never miss booking'), leading: Icon(CupertinoIcons.alarm))),
    Card(child: ListTile(title: Text('Transiction history'), subtitle: Text('Check your history'), leading: Icon(Icons.document_scanner_outlined))),
    Card(child: ListTile(title: Text('Gold club'), subtitle: Text('Join gold club'), leading: Icon(Icons.diamond))),


    ],

    ),
      ],
    );

  }
}
