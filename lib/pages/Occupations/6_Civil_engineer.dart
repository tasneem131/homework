import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

//صفحة مهندس مدني
class Engineer extends StatefulWidget{
  _EngineerState createState () => _EngineerState();
}



class _EngineerState extends State<Engineer>{
  //youtube
  String videoURL="https://www.youtube.com/watch?v=BAcHmPLTAkI";


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
          title: Text(' مهنة مهندس مدني '),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),

        body: Container(
          child: SingleChildScrollView( child:
          Column( children:<Widget>[
            Text("الهندسة المدنية (بالإنجليزية: Civil engineering)‏ أحد فروع الهندسة والمعنية بدراسة وتصميم وتحليل المنشآت المدنية المختلفة كالأبنية السكنية والخدمية والطرق والجسور والأنفاق والمطارات والموانئ وشبكات إمداد مياه الشرب ومحطات ضخ المياه وشبكات الصرف الصحي ومحطات التنقية ومعالجة المياه والسدود وكذلك مشاريع الري، والإشراف على عمل هذا المنشآت أثناء فترة استمرارها، لذا لا يجوز حصر هذا العلم بأنه العلم المعني بالتصميم وحده فقط.",style:TextStyle(fontSize: 20,color: Colors.black,),),
            GestureDetector(//روابط تشاعبية
                child: Text("يمكنك متابعة القراءة من هنا ",style: TextStyle(color: Colors.blue),),
                onTap: () async {
                  if (await canLaunch("https://ar.wikipedia.org/wiki/%D9%87%D9%86%D8%AF%D8%B3%D8%A9_%D9%85%D8%AF%D9%86%D9%8A%D8%A9")) {
                    await launch("https://ar.wikipedia.org/wiki/%D9%87%D9%86%D8%AF%D8%B3%D8%A9_%D9%85%D8%AF%D9%86%D9%8A%D8%A9");
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

