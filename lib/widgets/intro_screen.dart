import 'package:flutter/material.dart';
import 'package:homework/widgets/original_buttom.dart';
//بحاجة لعناصر تظهر فقط لهذا استخدمنا stl
class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(),
              //نكتب كود صورة
                Image.asset("Images/1.gif"),
              //كود الزر

              OriginalButtom(
                text: 'أبدا الاستخدام',
                onPressed: () => Navigator.of(context).pushNamed('login'),
                textColor: Colors.cyan,
                bgColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
