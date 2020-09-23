import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'file:///C:/Users/M.Nour/Desktop/homework/lib/pages/Drawer/home.dart';
import 'package:homework/services/auth.dart';

class MyDrawer extends StatefulWidget {
_MyDrawerState createState() => _MyDrawerState();
  }


class _MyDrawerState extends State<MyDrawer>{
  AuthBase authBase =AuthBase();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text(""),
            accountName: Text("اهلا بك عزيزي الزائر"),
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person),
            ),
            decoration: BoxDecoration(
                color: Colors.cyan,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://image.winudf.com/v2/image/Y29tLkJsdWVMaXZlV2FsbHBhcGVyQXBwX3NjcmVlbl8zXzE1MzkyODgzMDBfMDAy/screen-3.jpg?fakeurl=1&type=.jpg"),
                  fit: BoxFit.cover,
                )
            )
            ,
          ),
          InkWell(child: ListTile(
            title: Text("الصفحة الرئيسية", style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 15,
              fontWeight: FontWeight.bold,), textAlign: TextAlign.start,),
            leading: Icon(
              Icons.home, color: Colors.black.withOpacity(0.5), size: 20,),



          ), onTap: () {
           // Navigator.of(context).pushNamed('/home');
            Navigator.of(context).push(MaterialPageRoute(builder:(context)=> Home()
            ));

          },),
          //=================2===================
          InkWell(child: ListTile(
            title: Text("اقسام عامة ", style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 15,
              fontWeight: FontWeight.bold,), textAlign: TextAlign.start,),
            leading: Icon(
              Icons.chrome_reader_mode, color: Colors.black.withOpacity(0.5),
              size: 20,),



          ), onTap: () {
            Navigator.of(context).pushNamed('Categories1');
          },),
          //=================3===================
          InkWell(child: ListTile(
            title: Text("نبذه عن موقعنا", style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 15,
              fontWeight: FontWeight.bold,), textAlign: TextAlign.start,),
            leading: Icon(
              Icons.account_box, color: Colors.black.withOpacity(0.5),
              size: 20,),



          ), onTap: () {
            Navigator.of(context).pushNamed('AboutWebsite');
          },),
          //=================4===================
          InkWell(child: ListTile(
            title: Text("تسجيل الخروج", style: TextStyle(
              color: Colors.black.withOpacity(0.5),
              fontSize: 15,
              fontWeight: FontWeight.bold,), textAlign: TextAlign.start,),
            leading: Icon(
              Icons.lock, color: Colors.black.withOpacity(0.5),
              size: 20,),



          ), onTap: () {

                authBase.logout();
                Navigator.of(context).pushReplacementNamed('login');

          },),

        ],
      ),
    );
  }
}




