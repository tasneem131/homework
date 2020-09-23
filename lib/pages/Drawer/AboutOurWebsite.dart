import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/pages/Drawer/Jobs.dart';




class AboutWebsite extends StatefulWidget{
  _AboutWebsiteState createState () => _AboutWebsiteState();
}



class _AboutWebsiteState extends State<AboutWebsite>{

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Directionality
      (textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(' نبذة عن موقعنا  '),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),

        body: Container(
          child: SingleChildScrollView( child:
          Column( children:<Widget>[

            //-----------------------------------------نبذه عن موقعنا --------------
            Container(height: 80,padding:EdgeInsets.all(10),//تباعد بين جميع الاطراف
              child: Text("نبذه عن موقعنا :",
                style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan)
                ,),
            ),
            Text("موقعنا يساعد الجميع للبحث عن الوظائف لجميع الاقسام داخل او خارج البلاد  ",
                style: TextStyle( color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold,),
                textAlign: TextAlign.center),
            Text("من منا لم يبحث على وظيفة بعد انتهاء من مرحلة الجامعة , وبحث طويلا وقد ارهق من كثر البحث هنا لدى موقعنا مايقدم لك بحث سريع وتواصل مع الشركات الملعنه وتقديم بياناتك لها بأسهل الطرق"),
            Divider(color: Colors.cyan, height: 100,thickness: 3,),
            Container(height: 80,padding:EdgeInsets.all(1),//تباعد بين جميع الاطراف
              child: Text("لدنيا امكانية تواصل بين الشركات الطارحه لفكرة العمل والباحث عن الوظائف :",
                style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan)
                ,),
            ),

              Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    Expanded(flex: 1, child: Container(//استخدمانه لفكرة التمدد فقط
                      decoration: BoxDecoration(border:Border.all(color: Colors.black) ),
                      child: Text("الشركات",textAlign:TextAlign.center ,),

                    ),
                    ),
                    Expanded(flex: 3, child: Container(
                      decoration: BoxDecoration(border:Border.all(color: Colors.black) ),
                      child: Text("هم من يطرحون فكرة العمل ومتطلبات",textAlign:TextAlign.center ,),

                    ),
                    ),],),
                  Row(children: <Widget>[
                    Expanded(flex: 1, child: Container(
                      decoration: BoxDecoration(border:Border.all(color: Colors.black) ),
                      child: Text("الباحث",textAlign:TextAlign.center ,),

                    ),
                    ),
                    Expanded(flex: 3, child: Container(
                      decoration: BoxDecoration(border:Border.all(color: Colors.black) ),
                      child: Text("هو الذي يقدم ال CV وطلب للعمل",textAlign:TextAlign.center ,),

                    ),
                    ),
                  ],),

                ],
              ),

            Divider(color: Colors.cyan, height: 100,thickness: 3,),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Text("من قام بالشروع بالعمل",style: TextStyle(fontSize: 18),),
                  Text("نحن طالبات جامعة افتراضية السورية ",style: TextStyle(fontSize: 18,color: Colors.cyan),),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,//ليأخذ عرض الجوال
              padding: EdgeInsets.all(10),
              color: Colors.cyan,
              child: RichText(text:TextSpan (style: TextStyle(fontSize: 18)//تعطي جميع نفس الميزات
                ,children: <TextSpan>[
                  TextSpan(text:" تسنيم قوجة, تقوى فرج , ثراء عثمان: ",style: TextStyle(color: Colors.black)),
                  TextSpan(text:"مهندسين المستقبل وتحت اشراف الدكتور ياسر خضرا ",style: TextStyle(color: Colors.white),),
                ],
              )),

            ),
            Container(
              width: MediaQuery.of(context).size.width,//ليأخذ عرض الجوال
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: RichText(text:TextSpan (style: TextStyle(fontSize: 18)//تعطي جميع نفس الميزات
                ,children: <TextSpan>[
                  TextSpan(text:" فكرة عملنا ضمن حدود الاندرويد : ",style: TextStyle(color: Colors.black)),
                  TextSpan(text:"صفحة رئيسية تدل على موقعنا بروابطها المختلفه نبذه بسيطه عن بعض الوظائف المتاحه للجميع هو فقط تطبيق يساعدنا للدلاله على موقعنا (البحث عن وظائف) وليس له اي مهمه اخرى فقط للعرض وبشكل عام ",style: TextStyle(color: Colors.cyan),),
                ],
              )),),

            Container(
              width: MediaQuery.of(context).size.width,//ليأخذ عرض الجوال
              padding: EdgeInsets.all(10),
              color: Colors.cyan,
              child: RichText(text:TextSpan (style: TextStyle(fontSize: 18)//تعطي جميع نفس الميزات
                ,children: <TextSpan>[
                  TextSpan(text:" اللغات التي استخدمناها : ",style: TextStyle(color: Colors.black)),
                  TextSpan(text:"استخدمنا flutter & Dart ",style: TextStyle(color: Colors.white),),
                ],
              )),

            ),
            Divider(color: Colors.cyan, height: 100,thickness: 3,),
            Text("يمكنك الاطلاع على موقعنا من خلال الدخول على الرابط ادناه"),
            GestureDetector(//روابط تشاعبية
                child: Text("اضغط هنا للتوجهه للموقع الرسمي ",style: TextStyle(color: Colors.blue),),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context){
                      return Jobs();
                    },
                  ),

                  );
                }
            ),

          ],
          ),
          ),
        ),
      ),
    );
  }}

