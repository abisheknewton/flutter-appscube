import 'dart:async';
import 'dart:convert';

import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class SociaWebview extends StatefulWidget {
  final String title;
  final String url;
  SociaWebview(this.title, this.url);
  @override
  _SociaWebviewState createState() => _SociaWebviewState();
}

class _SociaWebviewState extends State<SociaWebview> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  bool isLoading = true;

  // static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
  //   keywords: <String>[
  //     'flutterio',
  //     'beautiful apps',
  //     'game',
  //     'social',
  //     'shopping',
  //     'beauty'
  //   ],
  //   // contentUrl: 'https://flutter.io',
  //   childDirected: false, // or MobileAdGender.female, MobileAdGender.unknown
  //   testDevices: <String>[], // Android emulators are considered test devices
  // );

  // BannerAd myBanner = BannerAd(
  //   adUnitId: "ca-app-pub-3236424817953725/9140893896",
  //   size: AdSize.smartBanner,
  //   targetingInfo: targetingInfo,
  //   listener: (MobileAdEvent event) {
  //     print("BannerAd event is $event");
  //   },
  // );

  // InterstitialAd myInterstitial = InterstitialAd(
  //   adUnitId: "ca-app-pub-3236424817953725/5601405459",
  //   targetingInfo: targetingInfo,
  //   listener: (MobileAdEvent event) {
  //     print("InterstitialAd event is $event");
  //   },
  // );
  // @override
  // void initState() {
  //   FirebaseAdMob.instance
  //       .initialize(appId: "ca-app-pub-3236424817953725~4080138906");
  //   super.initState();
  //   // myBanner..load();
  //   myInterstitial..load();
  // }

  // @override
  // void dispose() {
  //   myBanner.dispose();
  //   myInterstitial.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          bottomOpacity: 15,
          title: Text(
            widget.title,
            style: GoogleFonts.nunito(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          backgroundColor: Colors.blueGrey[700],
          actions: <Widget>[
            WebviewNavigation(_controller.future),
          ],
          elevation: 1,
          leading: IconButton(
              icon: Icon(Ionicons.ios_arrow_back),
              onPressed: () {
                // setState(() {
                //   myInterstitial
                //     ..load()
                //     ..show();
                // });

                Navigator.pop(context);
              }),
        ),
        // onWillPop: () => _exitApp(context),
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

class WebviewNavigation extends StatelessWidget {
  final Future<WebViewController> _webViewControllerFuture;
  const WebviewNavigation(this._webViewControllerFuture);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady =
            snapshot.connectionState == ConnectionState.done;
        final WebViewController controller = snapshot.data;
        return Row(
          children: <Widget>[
            IconButton(
                icon: Icon(Entypo.reply),
                onPressed: !webViewReady
                    ? null
                    : () async {
                        if (await controller.canGoBack()) {
                          controller.goBack();
                        } else {
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text('No back history')));
                        }
                      }),
            IconButton(
                icon: Icon(Entypo.forward),
                onPressed: !webViewReady
                    ? null
                    : () async {
                        if (await controller.canGoForward()) {
                          controller.goForward();
                        } else {
                          Scaffold.of(context).showSnackBar(
                              SnackBar(content: Text('No forward available')));
                        }
                      }),
            IconButton(
                icon: Icon(Icons.refresh),
                onPressed: !webViewReady
                    ? null
                    : () async {
                        controller.reload();
                      }),
          ],
        );
      },
      future: _webViewControllerFuture,
    );
  }

  showUserAgent(WebViewController controller, BuildContext context) {
    controller.evaluateJavascript(
        'SnackbarJSChannel.postMessage("User Agent: " + navigator.useragent);');
  }
}
