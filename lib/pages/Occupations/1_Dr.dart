import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

//صفحة دكتور
class Dr extends StatefulWidget{
  _DrState createState () => _DrState();
}



class _DrState extends State<Dr>{
  //youtube
  String videoURL="https://www.youtube.com/watch?v=xEWuBb6nbDI";


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
        title: Text(' مهنة الطبيب '),
        centerTitle: true,
        backgroundColor: Colors.cyan,
           ),

          body: Container(
            child: SingleChildScrollView( child:
                Column( children:<Widget>[

              Text("الطبيب كما يُعرف بالاسم الأقل شيوعاً الآسي هو من درس علم الطب ومارسها. وهو يعاين المرضى ويشخص لهم المرض ويصرف لهم وصفة يكتب فيها الدواء. والطبيب بعد تخرجه يمارس الطب العام. وإذا استمر في دراسته يتخصص في مجال معين في الطب. وكثير من هذه التخصصات تتحدد في نطاق معين من أجهزة وأعضاء جسم الإنسان مثل العظام والأمراض الباطنية وأمراض المسالك البولية والتناسلية والأنف الأذن والحنجرة والأعصاب وكثير من التفرعات الأخرى. وهناك تخصص بالمرأة وما يتعلق بأمراض النساء والولادة أو الأطفال أو حتى الأجنة. كما أنه بإمكانه التخصص بالجراحة العامة وبتخصصاتها وتفرعاتها.",style:TextStyle(fontSize: 20,color: Colors.black,),),
                  GestureDetector(//روابط تشاعبية
                      child: Text("يمكنك متابعة القراءة من هنا ",style: TextStyle(color: Colors.blue),),
                      onTap: () async {
                        if (await canLaunch("https://ar.wikipedia.org/wiki/%D8%B7%D8%A8%D9%8A%D8%A8")) {
                          await launch("https://ar.wikipedia.org/wiki/%D8%B7%D8%A8%D9%8A%D8%A8");
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

