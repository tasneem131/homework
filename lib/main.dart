import 'package:flutter/material.dart';//مكتبة متيلير يعتمد عليها دارت نبدء بها دائما بالفلاتر
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:homework/pages/Drawer/AboutOurWebsite.dart';
import 'file:///C:/Users/M.Nour/Desktop/homework/lib/pages/Drawer/Categories1.dart';
import 'file:///C:/Users/M.Nour/Desktop/homework/lib/pages/Occupations/1_Dr.dart';
import 'file:///C:/Users/M.Nour/Desktop/homework/lib/pages/Drawer/home.dart';
import 'package:homework/pages/Occupations/2_Lawyer.dart';
import 'package:homework/pages/Occupations/3_Judge.dart';
import 'package:homework/pages/Occupations/4_Accountant.dart';
import 'package:homework/pages/Occupations/5_Cooker.dart';
import 'package:homework/pages/Occupations/6_Civil_engineer.dart';
import 'package:homework/pages/Waller/Page1.dart';
import 'package:homework/widgets/intro_screen.dart';
import 'package:homework/pages/Drawer/Jobs.dart';

import './pages/login.dart';




void main() => runApp(MyApp());//نقطة الدخول لفلاتر الداله التي تبدء بها اي مشروع
class MyApp extends StatefulWidget {//تحتوي على مجموعة من وجت لنقدر نستخدمها
  @override
  _MyAppState createState() => _MyAppState();
}//يستدعى مره واحدة عند تشغيل البرنامج

class _MyAppState extends State<MyApp> {//لدينا وراثه من خلال Extends


  int currentSliderIndex = 0;//داله لمتغير تحت الصور


  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(//لتغير اللون العلوي للشاشه
        statusBarColor: Colors.cyan
    ));


    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme:InputDecorationTheme(
          filled: true,
          fillColor: Color(0xff2f9fe),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]),
          borderRadius: BorderRadius.circular(25),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]),
            borderRadius: BorderRadius.circular(25),
          ),
        ) ,

      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar"),//لغه المدعومه هي العربية
      ],
      locale: Locale("ar"),//اللغة الافتراضية هي العربية

      debugShowCheckedModeBanner: false,//لعدم اظهار كلمه ديبغ
      title: "Jop",
      //Home
      home:IntroScreen(),
      routes: {
        //=========1============

        'Page1' :(context){return Page1();
        },
        //===========2============
        //الصفحة الاساسية لدينا
        'home' :(context){return Home();
        },
        //الصفحات ضمن قائمة Drawer هنا الاقسام
        'Categories1': (context){return Categories1();
      },
        'AboutWebsite':(context){return AboutWebsite();
        },
        'login':(context) => LogIn(authType: AuthType.login,),
        'register':(context)=> LogIn(authType: AuthType.register),

        //============3================
        //صفحات الداخليه للاقسام
        'Dr' :(context){return Dr();
        },
        'Jobs' :(context){return Jobs();
        },
        'Lawyer' :(context){return Lawyer();
        },
        'Judge' :(context){return Judge();
        },
        'Accountant':(context){return Accountant();
        },
        'Cooker':(context){return Cooker();
        },
        'Engineer':(context){return Engineer();
        },


      },

    );
      //وجت اساسية الكنتينر

    }
  }



