import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AdGamesWebview extends StatefulWidget {
  final String title;
  final String url;
  AdGamesWebview(this.title, this.url);
  @override
  _AdGamesWebviewState createState() => _AdGamesWebviewState();
}


class _AdGamesWebviewState extends State<AdGamesWebview> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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


