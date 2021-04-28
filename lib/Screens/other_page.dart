import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Pages/webview.dart';

class OthersHome extends StatelessWidget {
  static const routename = '/othershome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[50],
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.topCenter,
                  colors: <Color>[
                Colors.purple[100],
                Colors.white70,
                Colors.white,
                Colors.white
              ])),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 15),
                TitleCard('Unique Apps', 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FirstRowWidgets(
                        60,
                        'Crossnote',
                        'https://appsco.pe/launch/crossnote',
                        'https://d3frsattnbx5l6.cloudfront.net/1589448924304-crossnote-logo512.png'),
                    FirstRowWidgets(
                        60,
                        'Weather',
                        'https://appsco.pe/launch/reactweather',
                        'https://d3frsattnbx5l6.cloudfront.net/1543961697934-reactweather-icon-512x512.png'),
                    FirstRowWidgets(
                        60,
                        'MultiCalc',
                        'https://appsco.pe/launch/multicalc',
                        'https://d3frsattnbx5l6.cloudfront.net/1555838303450-multicalc-icon-512.png'),
                    FirstRowWidgets(60, 'Timo', 'https://appsco.pe/launch/timo',
                        'https://d3frsattnbx5l6.cloudfront.net/1534925775708-timo-icons-512.png')
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FirstRowWidgets(
                        60,
                        'Snapdrop',
                        'https://appsco.pe/launch/snapdrop',
                        'https://d3frsattnbx5l6.cloudfront.net/1534060843742-snapdrop-chrome-touch-icon-192x192.png'),
                    FirstRowWidgets(
                        60,
                        'QR Snapper',
                        'https://appsco.pe/launch/qrsnapper',
                        'https://d3frsattnbx5l6.cloudfront.net/1537897490468-qrsnapper-icon-1024x1024.png'),
                    FirstRowWidgets(
                        60,
                        'Pomodoro',
                        'https://appsco.pe/launch/pomodoroclock',
                        'https://d3frsattnbx5l6.cloudfront.net/1543400417705-pomodoroclock-homescreen512.png'),
                    FirstRowWidgets(
                        60,
                        'momentum',
                        'https://appsco.pe/launch/momentum',
                        'https://d3frsattnbx5l6.cloudfront.net/1535798846588-momentum-android-chrome-512x512.png')
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FirstRowWidgets(
                        60,
                        'Todolist',
                        'https://appsco.pe/launch/todolist',
                        'https://d3frsattnbx5l6.cloudfront.net/1540308872917-todolist-icon512.png'),
                    FirstRowWidgets(
                        60,
                        'Habitory',
                        'https://appsco.pe/launch/habitory',
                        'https://d3frsattnbx5l6.cloudfront.net/1556459462605-habitory.png'),
                    FirstRowWidgets(
                        60,
                        'My Diary',
                        'https://appsco.pe/launch/mydiary',
                        'https://d3frsattnbx5l6.cloudfront.net/1585263276859-Senzanome.png'),
                    FirstRowWidgets(
                        60,
                        'Redberry',
                        'https://appsco.pe/launch/redberry',
                        'https://d3frsattnbx5l6.cloudfront.net/1561660355830-redberry-android-chrome-512x512.png')
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FirstRowWidgets(
                        65,
                        'Eventr',
                        'https://appsco.pe/launch/eventr',
                        'https://d3frsattnbx5l6.cloudfront.net/1542656031018-eventr-android-chrome-512x512.png'),
                    FirstRowWidgets(
                        60,
                        'Truecaller',
                        'https://appsco.pe/launch/truecaller',
                        'https://d3frsattnbx5l6.cloudfront.net/1532688814023-truecaller-icon-192x192.png'),
                    FirstRowWidgets(
                        60,
                        'ownWallet',
                        'https://appsco.pe/launch/ownwallet',
                        'https://d3frsattnbx5l6.cloudfront.net/1587119288133-ownwallet-icon-512x512.png'),
                    FirstRowWidgets(
                        60,
                        'Best Activities',
                        'https://appsco.pe/launch/bestactivities',
                        'https://d3frsattnbx5l6.cloudfront.net/1587118665671-bestactivities-icon-512x512.png')
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FirstRowWidgets(
                        60,
                        'Excercise',
                        'https://appsco.pe/launch/harderbetterfasterfitter',
                        'https://d3frsattnbx5l6.cloudfront.net/1587715803313-harderbetterfasterfitter-android-chrome-512x512.png'),
                    FirstRowWidgets(
                        60,
                        'Picular',
                        'https://appsco.pe/launch/picular',
                        'https://d3frsattnbx5l6.cloudfront.net/1535358293236-picular-homescreen192.07ddd369.png'),
                    FirstRowWidgets(
                        60,
                        'Journalistic',
                        'https://appsco.pe/launch/journalistic',
                        'https://d3frsattnbx5l6.cloudfront.net/1581708639167-icon-light-bg_x1024.png'),
                    FirstRowWidgets(
                        60,
                        'Redax Sounds',
                        'https://appsco.pe/launch/redaxsounds',
                        'https://d3frsattnbx5l6.cloudfront.net/1550543874201-redaxsounds-android-chrome-512x512.png')
                  ],
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
        ));
  }
}

class FirstRowWidgets extends StatelessWidget {
  final double size;
  final String title;
  final String navurl;
  final String imgurl;

  FirstRowWidgets(this.size, this.title, this.navurl, this.imgurl);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => SociaWebview(title, navurl)));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 6),
        child: Column(children: <Widget>[
          Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(blurRadius: 20, color: Colors.grey.withOpacity(.20))
              ],
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(size * 0.5),
                child: CachedNetworkImage(
                  imageUrl: imgurl,
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            width: 85,
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
            child: Text(title,
                textAlign: TextAlign.center,
                style: GoogleFonts.firaSans(
                  textStyle:
                      TextStyle(fontSize: 10, fontWeight: FontWeight.w700),
                )),
          ),
        ]),
      ),
    );
  }
}

class TitleCard extends StatelessWidget {
  final String title;
  final double size;
  TitleCard(this.title, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: GoogleFonts.firaSans(
          textStyle: TextStyle(
            color: Colors.purple[900],
            fontSize: size - 1,
            letterSpacing: 1,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
