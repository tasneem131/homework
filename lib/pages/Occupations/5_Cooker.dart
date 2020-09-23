import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

//صفحة طباخ
class Cooker extends StatefulWidget{
  _CookerState createState () => _CookerState();
}



class _CookerState extends State<Cooker>{
  //youtube
  String videoURL="https://www.youtube.com/watch?v=TTYCTfga89Q";


  YoutubePlayerController _controller;


  @override
  void initState(){
    _controller=YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(videoURL)
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(' مهنة طباخ '),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),

        body: Container(
          child: SingleChildScrollView( child:
          Column( children:<Widget>[
            Text("الطباخ هو ممتهن مهنة طبخ الطعام والطاه هو شخص يملك من مهارات احترافية عالية تجعله ملما بجميع جوانب إعداد الطعام. كلمة طاه:chef مشتقة ومختصرة من الكلمة الفرنسية (chef de cuisine)، يعمل الطباخ والطاهي في الفنادق والمطاعم والمؤسسات، يحضرون وجبات للموظفين والزوار الوافدين الأكل، حسب قائمة الأطعمة المخصصة.",style:TextStyle(fontSize: 20,color: Colors.black,),),
            GestureDetector(//روابط تشاعبية
                child: Text("يمكنك متابعة القراءة من هنا ",style: TextStyle(color: Colors.blue),),
                onTap: () async {
                  if (await canLaunch("https://ar.wikipedia.org/wiki/%D8%B7%D8%A8%D8%A7%D8%AE")) {
                    await launch("https://ar.wikipedia.org/wiki/%D8%B7%D8%A8%D8%A7%D8%AE");
                  }
                }
            ),
            YoutubePlayer(
              controller: _controller,
            ),


          ],
          ),
          ),
        ),
      ),
    );
  }}

