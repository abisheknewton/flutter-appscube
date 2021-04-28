import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import './Screens/games_page.dart';
import './Screens/socia_home.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:launch_review/launch_review.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import './Screens/other_page.dart';

class NavBarHome extends StatefulWidget {
  @override
  _NavBarHomeState createState() => _NavBarHomeState();
}

class _NavBarHomeState extends State<NavBarHome> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = [
    SociaHome(),
    GamesHome(),
    OthersHome(),
  ];

  share(BuildContext context) {
    Share.share(
        "Apps Cube enables you to accesss all your favorite apps and games in one click!" +
            "\n" +
            "https://play.google.com/store/apps/details?id=com.appfactory.appslite");
  }

  _launchURL(String urlname) async {
    final url = urlname;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  final TextStyle textstyletitle = GoogleFonts.cinzel(
    textStyle: TextStyle(
      color: Colors.deepOrange[900],
      fontSize: 22,
      fontWeight: FontWeight.w700,
    ),
  );
  final TextStyle textstylesubtitle = GoogleFonts.firaSans(
    textStyle: TextStyle(
      color: Colors.black,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          brightness: Brightness.dark,
          backgroundColor: Colors.white,
          title: Text(
            'APPS CUBE',
            style: GoogleFonts.firaSans(
              textStyle: TextStyle(
                fontSize: 22,
                letterSpacing: 3,
                wordSpacing: 10,
                fontWeight: FontWeight.w800,
                color: Colors.grey[700],
              ),
            ),
          ),
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              Container(
                height: 225,
                child: DrawerHeader(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Apps Cube',
                        style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '           Apps Cube is a new age social media app, which enables you to access all social media apps and games  in one place.',
                        style: GoogleFonts.nunitoSans(
                          textStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1493606278519-11aa9f86e40a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80"),
                        fit: BoxFit.cover),
                    color: Colors.blue[600],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Octicons.person,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'About Me',
                  style: textstylesubtitle,
                ),
                onTap: () {
                  _launchURL('https://www.facebook.com/abisheknewton');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                  leading: Icon(
                    MaterialIcons.feedback,
                    color: Colors.blueGrey,
                  ),
                  title: Text(
                    'Review & Feedback',
                    style: textstylesubtitle,
                  ),
                  onTap: () {
                    LaunchReview.launch();
                    Navigator.pop(context);
                  }),
              ListTile(
                leading: Icon(
                  Icons.share,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Share with friends',
                  style: textstylesubtitle,
                ),
                onTap: () {
                  share(context);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.more,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'More Apps',
                  style: textstylesubtitle,
                ),
                onTap: () {
                  _launchURL(
                      'https://play.google.com/store/apps/developer?id=abishek+newton');
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Entypo.documents,
                  color: Colors.blueGrey,
                ),
                title: Text(
                  'Privacy Policy',
                  style: textstylesubtitle,
                ),
                onTap: () {
                  _launchURL(
                      'https://sociaapp.blogspot.com/2020/06/privacy-policy.html');
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: _widgetOptions[_selectedIndex],
        extendBody: true,
        bottomNavigationBar: Container(
          margin: const EdgeInsets.symmetric(horizontal: 46, vertical: 22),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(35),
            boxShadow: [
              BoxShadow(blurRadius: 30, color: Colors.black.withOpacity(.25))
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
              child: GNav(
                  gap: 8,
                  // activeColor: Colors.white,
                  iconSize: 22,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  duration: const Duration(milliseconds: 300),
                  tabs: [
                    GButton(
                      icon: Octicons.home,
                      text: 'Apps',
                      backgroundColor: Colors.deepOrange[100],
                      iconActiveColor: Colors.deepOrange[900],
                      textStyle: GoogleFonts.firaSans(
                        textStyle: TextStyle(
                          color: Colors.deepOrange[900],
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    GButton(
                      icon: SimpleLineIcons.game_controller,
                      text: 'Games',
                      backgroundColor: Colors.teal[50],
                      iconActiveColor: Colors.teal[900],
                      textStyle: GoogleFonts.firaSans(
                        textStyle: TextStyle(
                          color: Colors.teal[900],
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    GButton(
                      icon: Entypo.fingerprint,
                      text: 'Unique',
                      backgroundColor: Colors.purple[50],
                      iconActiveColor: Colors.purple[900],
                      textStyle: GoogleFonts.firaSans(
                        textStyle: TextStyle(
                          color: Colors.purple[900],
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
