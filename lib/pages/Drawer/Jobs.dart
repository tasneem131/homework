import 'dart:async';
import 'package:flutter/material.dart';
import 'package:homework/pages/Drawer/MyDrawer.dart';
import 'package:webview_flutter/webview_flutter.dart';



class Jobs extends StatefulWidget {
  @override
  _JobsState createState() => _JobsState();
}

class _JobsState extends State<Jobs> {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("موقع التوظيف"),
        backgroundColor: Colors.cyan,
        centerTitle: true,
        elevation: 30,
        leading: IconButton(icon:Icon(Icons.arrow_back),onPressed: (){
          Navigator.of(context).pushReplacementNamed('home');
        },
        ),
      ),
      endDrawer: MyDrawer(),





      body: Builder(builder: (BuildContext context) {
        return WebView(
          //رابط موقعنا هنا
          initialUrl: 'https://www.youtube.com/watch?v=RA-vLF_vnng',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webViewController) {
            _controller.complete(webViewController);
          },
          // TODO(iskakaushik): Remove this when collection literals makes it to stable.
          // ignore: prefer_collection_literals
          javascriptChannels: <JavascriptChannel>[
            _toasterJavascriptChannel(context),
          ].toSet(),
          navigationDelegate: (NavigationRequest request) {

            print('allowing navigation to $request');
            return NavigationDecision.navigate;
          },
          onPageStarted: (String url) {
            print('Page started loading: $url');
          },
          onPageFinished: (String url) {
            print('Page finished loading: $url');
          },
          gestureNavigationEnabled: true,
        );
      }),

    );
  }

  JavascriptChannel _toasterJavascriptChannel(BuildContext context) {
    return JavascriptChannel(
        name: 'Toaster',
        onMessageReceived: (JavascriptMessage message) {
          Scaffold.of(context).showSnackBar(
            SnackBar(content: Text(message.message)),
          );
        });
  }}

