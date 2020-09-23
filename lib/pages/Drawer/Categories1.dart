import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/services/auth.dart';
import 'MyDrawer.dart';



class Categories1 extends StatefulWidget{
  _Categories1State createState () => _Categories1State();
  }



class _Categories1State extends State<Categories1>{
  AuthBase authBase =AuthBase();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(' الأقسام العامة'),
          centerTitle: true,
          backgroundColor: Colors.cyan,
          actions: <Widget>[
            IconButton(
              onPressed: (){

                Navigator.of(context).pushReplacementNamed('home');
              },
              icon:Icon( Icons.arrow_back),
              color:Colors.white ,),
          ],
        ),

        drawer: MyDrawer(),


        body: Container(
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: <Widget>[
              //--------1--------
              InkWell(child: Container(
                child:Card ( child: Column(
                  children: <Widget>[
                    Expanded(child: Image.asset("Images/1.jpg"
                      ,fit: BoxFit.cover,)),//الاكسبانديد تأخذ كامل المساحه بالعرض
                    Container(child: Text("وظيفة طبيب",style: TextStyle(fontSize: 20,color: Colors.white),),),

                  ],

                ),
                  color: Colors.cyan.withOpacity(0.2),

                ),
              ),
                onTap: (){
                  Navigator.of(context).pushNamed("Dr");
                },),

              //--------------2-------
              InkWell(child: Container(
                child:Card ( child: Column(
                  children: <Widget>[
                    Expanded(child: Image.asset("Images/2.jpg"
                      ,fit: BoxFit.cover,)),//الاكسبانديد تأخذ كامل المساحه بالعرض
                    Container(child: Text("وظيفة محامي",style: TextStyle(fontSize: 20,color: Colors.white),),),

                  ],

                ),
                  color: Colors.cyan.withOpacity(0.2),

                ),
              ),
                onTap: (){
                  Navigator.of(context).pushNamed("Lawyer");
                },),


              //-----------3--------------
              InkWell(child: Container(
                child:Card ( child: Column(
                  children: <Widget>[
                    Expanded(child: Image.asset("Images/3.png"
                      ,fit: BoxFit.cover,)),//الاكسبانديد تأخذ كامل المساحه بالعرض
                    Container(child: Text("وظيفة قاضي",style: TextStyle(fontSize: 20,color: Colors.white),),),

                  ],

                ),
                  color: Colors.cyan.withOpacity(0.2),

                ),
              ),
                onTap: (){
                  Navigator.of(context).pushNamed("Judge");
                },),

              //---------4-----------
              InkWell(child: Container(
                child:Card ( child: Column(
                  children: <Widget>[
                    Expanded(child: Image.asset("Images/4.jpg"
                      ,fit: BoxFit.cover,)),//الاكسبانديد تأخذ كامل المساحه بالعرض
                    Container(child: Text("وظيفة محاسب",style: TextStyle(fontSize: 20,color: Colors.white),),),

                  ],

                ),
                  color: Colors.cyan.withOpacity(0.2),

                ),
              ),
                onTap: (){
                  Navigator.of(context).pushNamed("Accountant");
                },),
              //-------5------------
              InkWell(child: Container(
                child:Card ( child: Column(
                  children: <Widget>[
                    Expanded(child: Image.asset("Images/5.jpg"
                      ,fit: BoxFit.cover,)),//الاكسبانديد تأخذ كامل المساحه بالعرض
                    Container(child: Text("وظيفة طباخ",style: TextStyle(fontSize: 20,color: Colors.white),),),

                  ],

                ),
                  color: Colors.cyan.withOpacity(0.2),

                ),
              ),
                onTap: (){
                  Navigator.of(context).pushNamed("Cooker");
                },),
              //----------6-------
              InkWell(child:Container(
                child:Card ( child: Column(
                  children: <Widget>[
                    Expanded(child: Image.asset("Images/6.jpg"
                      ,fit: BoxFit.cover,)),//الاكسبانديد تأخذ كامل المساحه بالعرض
                    Container(child: Text("وظيفة مهندس مدني",style: TextStyle(fontSize: 20,color: Colors.white),),),

                  ],

                ),
                  color: Colors.cyan.withOpacity(0.2),

                ),
              ),
                onTap: (){
                  Navigator.of(context).pushNamed("Engineer");
                },),

            ],
          ),
        ),
      ),

    );
  }
}






