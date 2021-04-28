import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socia/Screens/games_page.dart';
import '../Pages/webview_games.dart';

class GamesList extends StatelessWidget {
  final String categoryTitle;
  final List<ControlImages> listdetails;
  GamesList(this.categoryTitle, this.listdetails);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            categoryTitle,
            style: GoogleFonts.fasterOne(
              textStyle: TextStyle(
                color: Colors.teal[900],
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.green[900]),
        ),
        body: ListView.builder(
          // itemExtent: 100,
          itemBuilder: (BuildContext context, index) {
            final items = listdetails[index];
            return ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              title: Text(
                items.name,
                style: GoogleFonts.jotiOne(
                  textStyle: TextStyle(
                    color: Colors.teal[900],
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: CachedNetworkImage(
                    height: 65,
                    width: 65,
                    imageUrl: items.thumbImg,
                    fit: BoxFit.fill,
                  )),
              trailing: FlatButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SociaGamesWebview(items.name, items.navUrl),
                        ));
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    // color: Colors.amber[400],
                    decoration: BoxDecoration(
                        color: Colors.amber[400],
                        borderRadius: BorderRadius.circular(7)),
                    width: 75,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.play_arrow,
                          color: Colors.green[800],
                        ),
                        Text(
                          'Play',
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ],
                    ),
                  )),
            );
          },
          itemCount: listdetails.length,
        ));
  }
}
