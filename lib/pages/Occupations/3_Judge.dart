import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

//صفحة القاضي
class Judge extends StatefulWidget{
  _JudgeState createState () => _JudgeState();
}



class _JudgeState extends State<Judge>{
  //youtube
  String videoURL="https://www.youtube.com/watch?v=xFDwhsHrHV4";


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
          title: Text(' مهنة قاضي '),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),

        body: Container(
          child: SingleChildScrollView( child:
          Column( children:<Widget>[
            Text("القاضي هو شخص له ولاية القضاء يحكم وفقا للقانون بين المتنازعين ويرأس المحكمة. سلطات ووظائف، وطريقة التعيين، والانضباط، وتدريب القضاة تختلف على نطاق واسع في الدول المختلفة.",style:TextStyle(fontSize: 20,color: Colors.black,),),
            GestureDetector(//روابط تشاعبية
                child: Text("يمكنك متابعة القراءة من هنا ",style: TextStyle(color: Colors.blue),),
                onTap: () async {
                  if (await canLaunch("https://ar.wikipedia.org/wiki/%D9%82%D8%A7%D8%B6%D9%8A")) {
                    await launch("https://ar.wikipedia.org/wiki/%D9%82%D8%A7%D8%B6%D9%8A");
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

