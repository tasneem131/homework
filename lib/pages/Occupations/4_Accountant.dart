import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

//صفحة محاسب
class Accountant extends StatefulWidget{
  _AccountantState createState () => _AccountantState();
}



class _AccountantState extends State<Accountant>{
  //youtube
  String videoURL="https://www.youtube.com/watch?v=_foGqlcIrlQ";


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
          title: Text(' مهنة محاسب '),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),

        body: Container(
          child: SingleChildScrollView( child:
          Column( children:<Widget>[
            Text("المحاسب هو ممارس في مجال المحاسبة، والذي هو مسئول عن القياس، الإفصاح أو توفير ضمانات حول المعلومات المالية التي تساعد المديرين والمستثمرين وسلطات الضرائب وغيرها من صناع القرار على اتخاذ قرارات تخصيص الموارد.",style:TextStyle(fontSize: 20,color: Colors.black,),),
            GestureDetector(//روابط تشاعبية
                child: Text("يمكنك متابعة القراءة من هنا ",style: TextStyle(color: Colors.blue),),
                onTap: () async {
                  if (await canLaunch("https://ar.wikipedia.org/wiki/%D9%85%D8%AD%D8%A7%D8%B3%D8%A8")) {
                    await launch("https://ar.wikipedia.org/wiki/%D9%85%D8%AD%D8%A7%D8%B3%D8%A8");
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

