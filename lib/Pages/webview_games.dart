import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SociaGamesWebview extends StatefulWidget {
  final String title;
  final String url;
  SociaGamesWebview(this.title, this.url);
  @override
  _SociaGamesWebviewState createState() => _SociaGamesWebviewState();
}

// JavascriptChannel snackBarJavaScript(BuildContext context) {
//   return JavascriptChannel(
//     name: 'SnackbarJSChannel',
//     onMessageReceived: (JavascriptMessage message) {
//       Scaffold.of(context)
//           .showSnackBar(SnackBar(content: Text(message.message)));
//     },
//   );
// }
// WebViewController controllerGlobal;

class _SociaGamesWebviewState extends State<SociaGamesWebview> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        //   backgroundColor: Colors.black54,
        //   // actions: <Widget>[
        //   //   WebviewNavigation(_controller.future),
        //   // ],
        //   elevation: 1,
        // ),
        body: WillPopScope(
          onWillPop: () => _exitApp(context, _controller.future),
          child: Stack(children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              child: WebView(
                initialUrl: widget.url,
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController) {
                  _controller.complete(webViewController);
                },
                onPageFinished: (_) {
                  setState(() {
                    isLoading = false;
                  });
                },
                // javascriptChannels: <JavascriptChannel>[
                //   snackBarJavaScript(context),
                // ].toSet(),
              ),
            ),
            isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Container(),
          ]),
        ),
      ),
    );
  }

  _exitApp(BuildContext context, Future<WebViewController> controller) async {
    controller.then((data) async {
      WebViewController controller = data;
      var goback = await controller.canGoBack();
      if (goback == true) {
        // ignore: missing_return
        print("onwill goback");
        controller.goBack();
        // ignore: missing_return
      } else {
        print("onwill not goback");
        Navigator.pop(context);
      }
    }, onError: (e) {
      print(e);
    });
  }
}


