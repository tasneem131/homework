import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Page1 extends StatefulWidget{
  _Page1State createState () => _Page1State();
}



class _Page1State extends State<Page1>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality
      (textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(' وظيفة عمومية وخصوصية داخل البلاد  '),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),

        body: Container(
          child: SingleChildScrollView( child:
          Column( children:<Widget>[

              Container(height: 80,padding:EdgeInsets.all(10),//تباعد بين جميع الاطراف
                child: Text("الوظائف العمومية داخل البلاد" ,
                  style: TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan)
                  ,),
              ),
              Text("هي كل وظيفة يقدمها القطاع العام في البلاد",
                  style: TextStyle( color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,),
                  textAlign: TextAlign.center),
              Text("من منا لم يبحث على وظيفة بعد انتهاء من مرحلة الجامعة , وبحث طويلا وقد ارهق من كثر البحث هنا لدى موقعنا مايقدم لك بحث سريع وتواصل مع الشركات الملعنه وتقديم بياناتك لها بأسهل الطرق"),
              Divider(color: Colors.cyan, height: 100,thickness: 3,),


              Container(height: 80,padding:EdgeInsets.all(10),//تباعد بين جميع الاطراف
                child: Text("الوظائف الخصوصية خارج البلاد" ,
                  style: TextStyle(fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan)
                  ,),
              ),
              Text("هي كل وظيفة يقدمها القطاع الخاص خارج اراضي الوطن",
                  style: TextStyle( color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,),
                  textAlign: TextAlign.center),
              Text("من منا لم يبحث على وظيفة بعد انتهاء من مرحلة الجامعة , وبحث طويلا وقد ارهق من كثر البحث هنا لدى موقعنا مايقدم لك بحث سريع وتواصل مع الشركات الملعنه وتقديم بياناتك لها بأسهل الطرق"),
              Divider(color: Colors.cyan, height: 100,thickness: 3,),


          ],
          ),
          ),
        ),
      ),
    );
  }}

