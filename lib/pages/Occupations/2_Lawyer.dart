import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class Lawyer extends StatefulWidget{
  _LawyerState createState () => _LawyerState();
}


//صفحة محامي
class _LawyerState extends State<Lawyer>{
  //youtube
  String videoURL="https://www.youtube.com/watch?v=slEO2dFZGak";


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
          title: Text(' مهنة محامي '),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),

        body: Container(
          child: SingleChildScrollView( child:
          Column( children:<Widget>[
            Text("المحامي لقب يطلق على من أجيز له ممارسة مهنة المحاماة بناء على القوانين المعمول بها، والمحامي قد يجاز للمرافعة أمام بعض المحاكم دون غيرها، فمثلا المحامي الذي تحت التدريب لا يجوز له تقديم المرافعات باسمه إلا في المحاكم الجزئية دون غيرها أما في المحاكم الابتدائية فيجب أن تكون باسم المحامي مدير التدريب، وقد يجاز المحامي بالترافع أمام المحاكم الابتدائية أو الدرجة الأولى لكنه غير مخول للمرافعة أمام المحكمة العليا أو المحكمة الدستورية بل تَكون هناك شروط معينة كمدة الخدمة والتزامه بالجداول النقابية ولوائح النقابة الداخلية وأن يكون مقيدا بجداول المحاكم العليا كمحكمة النقض والمحكمة الدستورية العليا، واختصاص المحامي يكون باختياره ولا يلزم بالتقيد بهذا الاختصاص فمثلا المحامي الجنائي يستطيع الترافع في القضايا المدنية وهكذا طالما أنه في نفس الدرجة أو في الدرجة التي تعلو الاختصاص الأخر.وهناك نقابات أو جمعيات تنظم مهنة المحاماة، ويتقيد المحامون بقوانينها وأنظمتها إضافة إلى دورها في حماية مهنة المحاماة والمحامين ومنحهم الامتيازات، كذلك دورها في تنظيم العلاقة ما بين المحامين وموكليهم.",style:TextStyle(fontSize: 20,color: Colors.black,),),
            GestureDetector(//روابط تشاعبية
                child: Text("يمكنك متابعة القراءة من هنا ",style: TextStyle(color: Colors.blue),),
                onTap: () async {
                  if (await canLaunch("https://ar.wikipedia.org/wiki/%D9%85%D8%AD%D8%A7%D9%85%D9%8A")) {
                    await launch("https://ar.wikipedia.org/wiki/%D9%85%D8%AD%D8%A7%D9%85%D9%8A");
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

