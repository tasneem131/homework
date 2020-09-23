import 'package:flutter/material.dart';
import 'package:homework/pages/login.dart';
import 'package:homework/services/auth.dart';
import 'package:homework/widgets/original_buttom.dart';
class AuthForm extends StatefulWidget {

  final AuthType authType;

  const AuthForm({Key key, @required this.authType}) : super(key: key);
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {

  //هذا المتغير برايفت بسبب علامة _
  final _formkey = GlobalKey<FormState>();
  String _email ='',_password ='';
  AuthBase authBase = AuthBase();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Padding(
      padding: const EdgeInsets.symmetric(horizontal:40, ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          TextFormField(
            //تخزين القيمة بالايميل
            onChanged: (value)=> _email =value,
            //اذا كانت القيمة الايميل فاضية تظهر رسالة خطا وان مكتوب مابعمل شي بكمل
            validator: (value)=>value.isEmpty
                ?'ادخل ايميل صالح للاستخدام'
            : null,
            decoration: InputDecoration(
              labelText: 'ادخل ايميلك',
              hintText: 'مثال: Text@gmail.com',

            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            onChanged: (value)=> _password =value,
            //اذا كانت القيمة الايميل فاضية تظهر رسالة خطا وان مكتوب مابعمل شي بكمل
            validator: (value)=>value.length<6 ? 'كلمة المرور لازم يكون اكبر من  6 ارقام': null,
            decoration: InputDecoration(

            labelText: 'ادخل رقمك السري',
            hintText: 'مثال: 123456',

          ),
            obscureText: true,//لاخفاء الكتابة على شكل كلمة مرور
          ),
          SizedBox(
            height: 25,
          ),
          OriginalButtom(
            text: widget.authType ==AuthType.login ?
            'ادخل' :'اشتراك',
            textColor: Colors.white,
            bgColor: Colors.cyan,
            onPressed: () async{
              if(_formkey.currentState.validate()){
                if (widget.authType== AuthType.login)
                  await  authBase.loginWithEmailAndPassword(_email, _password);
                Navigator.of(context).pushReplacementNamed('home');}
                  else{
                  await  authBase.registerWithEmailAndPassword(_email, _password);
                  Navigator.of(context).pushReplacementNamed('home');
              }
            },
          ),
          SizedBox(
            height: 5,
          ),
          FlatButton(onPressed: (){
            if(widget.authType == AuthType.login)
              Navigator.of(context).pushReplacementNamed('register');
            else
              Navigator.of(context).pushReplacementNamed('login');
          },
              child: Text( widget.authType ==AuthType.login
                  ?'ليس لدي حساب' :
              'هل لديك حساب',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 20
              ),)
          ),
         SizedBox(height: 5,),

        ],

      ),
    ),);
  }
}
