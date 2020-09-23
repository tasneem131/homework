import 'package:flutter/material.dart';
import 'package:homework/widgets/auth_form.dart';

enum AuthType{login,register}

class  LogIn extends StatelessWidget {

final AuthType authType;
const LogIn({Key key, this.authType}) : super(key: key);

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صفحة تسجيل الدخول'),
        centerTitle: true,
        backgroundColor: Colors.cyan,

      ),

body: SingleChildScrollView(
child:Column(

children: <Widget>[
Stack(
children: <Widget>[
Container(
height: MediaQuery.of(context).size.height * 0.5,//ارتفاع الموبايل حسب جميع الانواع ونص الارتفاع
decoration: BoxDecoration(
color: Colors.cyan,
//لاضافة الحواف المنحنيه
borderRadius: BorderRadius.only(bottomLeft:Radius.circular(50),
bottomRight: Radius.circular(50) ),

),
),
Center(
child: Column(
children: <Widget>[
SizedBox(height: 60,),
Text("Hello",
style: TextStyle(
color: Colors.white,//لونها
fontSize: 28,//حجمها
fontWeight: FontWeight.w600,//غمقانها
letterSpacing: 1.2,//المسافة بين الكلمه

),),
Image.network("https://4.bp.blogspot.com/-eHduS5mtrzQ/Uapvkcjq4RI/AAAAAAAAAJA/pdrBb1SQCT0/s1600/1997be3ae5.gif",
height:250
,),

],
),
),
],
),

AuthForm(authType: authType),
],
) ,
),
);
}}




