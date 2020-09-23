import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:homework/data/data.dart';
import 'package:homework/pages/Drawer/Jobs.dart';
import 'MyDrawer.dart';




 class Home extends StatefulWidget{
  State<StatefulWidget> createState(){
    return HomeState();
  }
}
class HomeState extends State<Home>{



  Widget offerImage(String imageUrl) {//داله لتميزه الصور المتقلبة
    return Builder(// وجت من نوع بولدر تعيده لنا
      builder: (BuildContext context) {//نعرف صوره ونعطيها عرض صحيح مع انماط الهواتف المختلفة
        return Container(
          //width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),//العرض المناسب
          child: ClipRRect(
            borderRadius: new BorderRadius.circular(8.0),//لتقويس الصوره
            child: Image.network(
              imageUrl,
              fit: BoxFit.fill,
            ),
          ),
        );
      },
    );
  }
Widget build(BuildContext context){
  return Scaffold(
    //-----------------------------------------الجزء العلوي ----------------

  appBar: AppBar(
      title: Text("موقع للبحث عن الوظائف"),
      backgroundColor: Colors.cyan,
      centerTitle: true,
      elevation: 30,
      leading: IconButton(icon:Icon(Icons.search),onPressed: (){
      showSearch(context: context, delegate: DataSearch(),);
       },
      ),
    ),
    endDrawer: MyDrawer(),




  
    body: ListView(
      children: <Widget>[






        //-----------------------------------------التقليب بين الصور -----------
        Container(height: 80,padding:EdgeInsets.all(10),//تباعد بين جميع الاطراف
          child: Text("بعض صور المهن التي تتوفر لدينا :",
            style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.cyan)
            ,),
        ),
        SizedBox(height: 18,),
        CarouselSlider(

          options: CarouselOptions(
            height: 180,
            //height:double.infinity,//ارتفاع شامل للجوال
            autoPlay: true,//ليقلب الصور بشكل الي
            viewportFraction: 0.99,//يعرض الصوره لحالها بالعرض الواحد
            autoPlayInterval: Duration(seconds: 2,),//فتره التقليب
            autoPlayAnimationDuration: const
            Duration(milliseconds:300),//سرعة التقليب بين الصور
            enlargeCenterPage: true,

          ),

          items: <Widget>[
            offerImage("https://cdn101.adwimg.com/u/170914/forums/9PB2WctRUobxsYX30NrzzU4OrwwULi8n.jpg"),
            offerImage("https://bestlawfirmsa.com/wp-content/uploads/2020/06/%D9%85%D9%86-%D8%A3%D9%81%D8%B6%D9%84-%D9%85%D8%AD%D8%A7%D9%85%D9%8A-%D8%A8%D8%AC%D8%AF%D8%A9-%D8%A7%D9%84%D8%B3%D8%B9%D9%88%D8%AF%D9%8A%D8%A9.png"),
            offerImage("https://i0.wp.com/snacksyrian.com/wp-content/uploads/2019/10/FB_IMG_1572512535923.jpg?fit=720%2C480&ssl=1"),
          ],

        ),//نهاية عملنا للصور المتحركه
        Divider(color: Colors.cyan, height: 100,thickness: 3,),//فاصل








        //-----------------------------------------الاقسام العامه  --------------
        Container(padding:EdgeInsets.all(10),//تباعد بين جميع الاطراف
          child: Text("الاقسام العامة التي يحتويها موقعنا :",
            style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.cyan)
            ,),
        ),
        for(int i=0; i<getJobs().length; i++)
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[

                  Column(
                    children: <Widget>[

                      Image.network(//اظهار الصور بشكل عامودي ضمن السطر
                        getJobs()[i].iconURL,
                        height: 82,
                        width:82,
                      ),

                      Row(//للتقييم ونجمه
                        children: <Widget>[
                          Icon(Icons.star,color:Colors.cyan,),
                          Text(getJobs()[i].rating.toString(),
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey.shade500
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  VerticalDivider(),


                   InkWell(child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start ,
                    children: <Widget>[
                      Text(getJobs()[i].name,//استدعاء اسم الوظيفة
                        style: TextStyle( color: Colors.cyan, fontSize: 25, fontWeight: FontWeight.bold,),),
                      Text(getJobs()[i].getCategorisNames())
                    ],
                    ), onTap: (){

                     Navigator.of(context).pushNamed('Page1');
                   },),



                ],
              ),
              Divider(),
            ],
          ),
          Divider(color: Colors.cyan, height: 100,thickness: 3,),





        //-----------------------------------------الشركات المساهمه ------------
        Container(height: 80  ,padding:EdgeInsets.all(10),//تباعد بين جميع الاطراف
          child: Text("بعض الشركات التي نتعاون معها  :",
            style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.cyan)
            ,),
        ),
        Container(height: 400,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
            children: <Widget>[
              GridTile(
                child: Image.network("https://www.aksbonline.com/wp-content/uploads/2019/05/ad-1.jpg"),
                footer: Container(
                  height: 30,
                  color: Colors.black.withOpacity(0.5),
                  child: Text("ميكروسفت",style:TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                ),
              ),
              GridTile(
                child: Image.network("https://4.bp.blogspot.com/-mKlETsGr210/VfoBVVaw-VI/AAAAAAAAAns/5aGdcvFxPQY/s640/KHjKlEd.gif"),
                footer: Container(
                  height: 30,
                  color: Colors.black.withOpacity(0.5),
                  child: Text("قوقل",style:TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                ),
              ),
              GridTile(
                child: Image.network("https://www.tech-wd.com/wd/wp-content/uploads/2017/03/giphy.gif"),
                footer: Container(
                  height: 30,
                  color: Colors.black.withOpacity(0.5),
                  child: Text("فيس بوك",style:TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                ),
              ),
              GridTile(
                child: Image.network("https://taqnia24.com/wp-content/uploads/2017/08/%D9%8A%D9%88%D8%AA%D9%8A%D9%88%D8%A8-%D8%AA%D8%BA%D9%8A%D8%B1-%D8%A7%D9%84%D8%B4%D8%B9%D8%A7%D8%B1-%D8%A7%D9%84%D8%AE%D8%A7%D8%B5-%D8%A8%D9%87%D8%A7-%D9%84%D8%A3%D9%88%D9%84-%D9%85%D8%B1%D8%A9.gif"),
                footer: Container(
                  height: 30,
                  color: Colors.black.withOpacity(0.5),
                  child: Text("يوتيوب",style:TextStyle(color: Colors.white),textAlign: TextAlign.center,),
                ),
              ),
            ],),),
        Divider(color: Colors.cyan, height: 100,thickness: 3,),//فاصل


        //new
        //-----------------------------------------الترحيب بالزائر  -----------
        Container(height: 80,padding:EdgeInsets.all(10),//تباعد بين جميع الاطراف
          child: Text("رسالة الترحيب بالزائر  :",
            style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.cyan)
            ,),
        ),
        Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage('Images/1.jpg'), fit: BoxFit.cover,
                )
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                    Transform.translate(
                 child: Icon(Icons.favorite , size: 75, color: Colors.redAccent,),
                        offset: Offset(0, -30),
                    ),
                Text("مرحبا بك",
                    style: TextStyle(color: Colors.cyan,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,),
                    textAlign: TextAlign.center,
                     ),
                Padding(
                  padding: const EdgeInsets.only(left: 48,right: 48),
                  child: Text("شرفت موقعنا للبحث عن الوظائف هنا موقعنا بالهاتف لتعريف عنا فقط ان اردت الاشتراك يمكنك الضغط على الزر الموجود بالاسفل والتواجد معنا",
                      style: TextStyle(color: Colors.cyan),
                    textAlign: TextAlign.center,
                  ),

                ),
              ],
            ),
          ],
        ),

       Align(
         alignment: Alignment.bottomCenter,
         child:Padding(padding: const EdgeInsets.only(bottom: 24),
              child:RaisedButton(
                color: Colors.cyan,
               child:Text('اذهب لموقعنا',
                style: TextStyle(color: Colors.white),),
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(
                       builder: (context){
                     return Jobs();
                   },
                   ),

                );}
            ),
         ),

       ),
        Padding(
          padding: const EdgeInsets.only(left: 48,right: 48),
          child: Text("او اذا اردت التصفح موقعنا هنا واخذ معلومات قليله عنا ابقا هنا وتصفح",
            style: TextStyle(color: Colors.cyan),
            textAlign: TextAlign.center,
          ),

        ),


  Align(
  alignment: Alignment.bottomCenter,
  child:Padding(padding: const EdgeInsets.only(bottom: 24),
  child:RaisedButton(
  color: Colors.cyan,
  child:Text('ادخل هنا',
  style: TextStyle(color: Colors.white),),
  onPressed: (){
    Navigator.push(context, MaterialPageRoute(
      builder: (context){
      return Home();
      },
    ),
    );
  },
  ),
  ),

  )
        // end new


      ],
    ),
  );

}
}
//كود عملية البحث لم نستعيد بقاعدة البيانات للان
class DataSearch extends SearchDelegate<String> {
   final jobs=[//مايمكن البحث عنه
     "  طبيب نسائية",
     "طبيب عام",
     "طبيب قلبية",
     "طبيب عظام",
     "طبيب اخصائي شرايين قلب",
     "صيدلاني",
     "مهندس معماري",
     "مهندس مدني",
     "مبرمج",
     "سباك",
     "مدرس عربي",
     "مدرس رياضيات",
     "مدرس لغة انجليزي",
     "مدرس لغة فرنسي",
     "محاسب",
     "محامي",
     "قاضي",
     "مختص شوون قضائية",
     "طباخ",
   ];
   final showsJobs=[//مايمكن رؤيته
     "طبيب",
     "مهندس",
     "مدرس",
     "محامي",
     "طباخ",

   ];
  @override
  List<Widget> buildActions(BuildContext context) {
    // Action for AppBar
    return[
      IconButton(
        icon: Icon(Icons.clear) ,
        onPressed:(){
        query="";//يفضي عملية البحث
      },

      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // هي التي تظهر قبل مربع النصي Icon Leading
    return IconButton(
      icon: AnimatedIcon(
          icon:AnimatedIcons.menu_arrow,
      progress:transitionAnimation,
      ) ,
      onPressed:(){
      close(context, null);
    },

    );

  }



  @override
  Widget buildResults(BuildContext context) {
    // نتيجة البحث
    return Center(
        child:Container(

          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: <Widget>[
               Card(
                color: Colors.white,
                child: Center(
                  child: Text(query),
                ),
              ),
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

        )
    );

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    //الشي الظاهر بعد عملية البحث
    final suggestionlist = query.isEmpty
        ?showsJobs
        :jobs.where((p) => p.startsWith(query)).toList();
    return ListView.builder(itemBuilder: (context,index)=>ListTile(
      onTap:(){
        showResults(context);
      } ,
      leading: Icon(Icons.featured_play_list),
      title:RichText(text: TextSpan(
        text: suggestionlist[index].substring(0,query.length),
        style: TextStyle(color: Colors.black,
        fontWeight: FontWeight.bold),
        children: [TextSpan(
          text: suggestionlist[index].substring(query.length),
          style: TextStyle(color: Colors.grey)
        )]
      )),
    ),
      itemCount: suggestionlist.length,
    );
  }
}


