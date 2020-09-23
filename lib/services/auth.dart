import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class User{
  final String uid;

  User({@required this.uid, });


}
//كلاس مسؤول على عملية الدخول والخروج
class AuthBase{
  // ignore: deprecated_member_use
  User _userFromFirebase(FirebaseUser user){
    return User(uid: user.uid);
  }
  //اشتراك للاشخاص الجداد
    Future<void> registerWithEmailAndPassword(
        String email,
        String password) async{
      try{
      //هي الي بتقول لقاعدة البيانات سجل عضو جديد
        final authResult =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: email, password: password);
        //نوصل للمستخدم وللايدي تبعه المميز
        return _userFromFirebase(authResult.user);
      }
      catch(e){
        print(e.toString());
      }
    }
    //الدخول
  Future<void> loginWithEmailAndPassword( String email,
      String password)async {
    try {
      final authResult =
      await FirebaseAuth.instance.signInWithEmailAndPassword
        (email: email, password: password);
      return _userFromFirebase(authResult.user);
    } catch (e) {
      print(e.toString());
    }}
//خروج
    Future<void> logout() async {
      await FirebaseAuth.instance.signOut();
    }
  }