import 'package:flutter/material.dart';
import '../Pages/webview.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:google_fonts/google_fonts.dart';

class SociaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sizeInfo = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.red[50],
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topCenter,
                colors: <Color>[
              Colors.deepOrange[100],
              Colors.white30,
              Colors.white,
              Colors.white,
            ])),
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            SizedBox(height: 25),
            TitleCard('Popular', 26),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FirstRowWidgets(65, 'Facebook', 'https://www.facebook.com',
                    'https://lh3.googleusercontent.com/ccWDU4A7fX1R24v-vvT480ySh26AYp97g1VrIB_FIdjRcuQB2JP2WdY7h_wVVAeSpg'),
                FirstRowWidgets(65, 'Instagram', 'https://www.instagram.com',
                    'https://lh3.googleusercontent.com/2sREY-8UpjmaLDCTztldQf6u2RGUtuyf6VT5iyX3z53JS4TdvfQlX-rNChXKgpBYMw'),
                FirstRowWidgets(65, 'Twitter', 'https://www.twitter.com',
                    'https://lh3.googleusercontent.com/x3XxTcEYG6hYRZwnWAUfMavRfNNBl8OZweUgZDf2jUJ3qjg2p91Y8MudeXumaQLily0')
              ],
            ),
            Divider(
              indent: sizeInfo.width * 0.4,
              endIndent: sizeInfo.width * 0.4,
              thickness: 1.5,
            ),
            SizedBox(height: 25),
            TitleCard('Social', 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FirstRowWidgets(
                    50,
                    'LinkedIn',
                    'https://www.linkedin.com/login?fromSignIn=true&trk=guest_homepage-basic_nav-header-signin',
                    'https://lh3.googleusercontent.com/fqYJHtyzZzA4vacRzeJoB93QNvA5-mvR-8UB5oVLxdYDSTpfLp_KgYD4IqVGJUgFEJo'),
                FirstRowWidgets(50, 'Pinterest', 'https://www.pinterest.com',
                    'https://lh3.googleusercontent.com/dVsv8Hc4TOUeLFAahxR8KANg22W9dj2jBsTW1VHv3CV-5NCZjP9D9i2j5IpfVx2NTB8'),
                FirstRowWidgets(50, 'Reddit', 'https://www.reddit.com',
                    'https://lh3.googleusercontent.com/8Vw-7MAm558750a4M55fiOlUf7lP2cYnFuqSWynrygIiyEEiQQDa_xxHKYOX83L0UD2T'),
                FirstRowWidgets(50, 'Snapchat', 'https://whatis.snapchat.com/',
                    'https://lh3.googleusercontent.com/KxeSAjPTKliCErbivNiXrd6cTwfbqUJcbSRPe_IBVK_YmwckfMRS1VIHz-5cgT09yMo=s180-rw'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FirstRowWidgets(50, 'ShareChat', 'https://sharechat.com/',
                    'https://lh3.googleusercontent.com/cZU60RYPAhcEUhKx3tiJJg83U24qp16pWJuIpP_6Qxv37OXuYctdjS2eg8zNrv3jV5o=s180-rw'),
                FirstRowWidgets(50, 'Quora', 'https://www.quora.com',
                    'https://lh3.googleusercontent.com/aGscp2B1FOJvy2R3H4yr0c3q1ySeP4y_sph6ioJmZ99KS2KayE7iSknPsLGTKcOoYd8=s180-rw'),
                FirstRowWidgets(50, 'Tumblr', 'https://www.tumblr.com',
                    'https://lh3.googleusercontent.com/f10l_De0eHfRBP7anjc9eMcBvtCxOXMdUm_C06EMip1xRJpJH0LSBXNcuK3tDxSV9w=s180-rw'),
                FirstRowWidgets(50, 'Dribbble', 'https://dribbble.com/',
                    'https://lh3.googleusercontent.com/qvk6H6ZR2811TjZ2a2PWisbSe49wMSWvh_n_u9_0lQhJNxvtPMWgeUbHLsla5z9C2w=s180-rw'),
              ],
            ),
            Divider(
              indent: sizeInfo.width * 0.4,
              endIndent: sizeInfo.width * 0.4,
              thickness: 1.5,
            ),
            SizedBox(height: 25),
            TitleCard('News', 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FirstRowWidgets(50, 'Daily Hunt', 'https://m.dailyhunt.in/',
                    'https://lh3.googleusercontent.com/Ml7kliqttZzEpXZTHty2LOGyt612poDQ1QoEL6QBoMsK1JyZHlyStKCrjhAxW8Z6e8Nj=s180'),
                FirstRowWidgets(
                    50,
                    'TOI',
                    'https://timesofindia.indiatimes.com/',
                    'https://lh3.googleusercontent.com/AS0Z1xkuhveb3IXzYASn52nhlFDIwcEmu1XmewVDZ39R8fZrQ13wldCy2nbjx9Aa1WCS=s180'),
                FirstRowWidgets(50, 'Inshorts', 'https://www.inshorts.com/',
                    'https://lh3.googleusercontent.com/lvAGNNFIBMC3ZgS-JJcSwDzpSjOGMg7FGY14FrffJobLOed9-H2DiuZwknsIwVwKwTjo=s180'),
                FirstRowWidgets(50, 'NDTV', 'https://www.ndtv.com/',
                    'https://lh3.googleusercontent.com/oMM2LtXhM8WWgMIVUz-oXWkaywRAnOJzCZBsYOpyuVg6yuWhKekeA-oXbzbTQKHgGuAa=s180'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FirstRowWidgets(50, 'Reuters', 'https://www.reuters.com/',
                    'https://lh3.googleusercontent.com/akXpaczA37pqAKNTPg70YyUetJOxegpRCy6J-q3sldJrvow1dBLdyHyoZTpB60mGwzou=s180-rw'),
                FirstRowWidgets(
                    50,
                    'Economic Times',
                    'https://economictimes.indiatimes.com/',
                    'https://lh3.googleusercontent.com/1JB_yUFt5gC6HAj9NHA_HuS4ja8kSpXq3KWApSZtAP6xc3WJpeERnv4n5ohdhbwdQEk=s180'),
                FirstRowWidgets(
                    50,
                    'Business Line',
                    'https://www.thehindubusinessline.com/',
                    'https://lh3.googleusercontent.com/qk62oC5osS2k9xFe9pBnHKqU6hqOeI8i-rg0r1Y_AqR_-C2Ltfl--9VR_QLgkI5HJmI=s180'),
                FirstRowWidgets(50, 'Mint', 'https://www.livemint.com/',
                    'https://lh3.googleusercontent.com/lPcM48w2i1EoggSEdsQlqg4R2tsheJ-zlhEZe4XJG_AwD4ajQhNv4XVthAFylsbrkR8=s180'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FirstRowWidgets(50, 'The Hindu', 'https://www.thehindu.com/',
                    'https://lh3.googleusercontent.com/ygazxlwV00_yT1bg2Yi1MthMjPMPe9XbA2AxZb9iL9N85vA2QcQ-vzqYRD19TVyEgoXG=s180'),
                FirstRowWidgets(
                    50,
                    'Financial Express',
                    'https://www.financialexpress.com/',
                    'https://lh3.googleusercontent.com/IM5q7H7YxOAe7x0EAm6slWfaTHTKLXR9DwbAeiq418y_ZCjnoPsKI-brVrFHpF1k3LM=s180'),
                FirstRowWidgets(50, 'Buzz Feed', 'https://www.buzzfeed.com/',
                    'https://lh3.googleusercontent.com/nCn-GyWf5ib4dHorOp2z3Qi8al8v7Hl-3_D2GoNXHXPMr3CnAet_6qUgZWv0hWgQIA=s180'),
                FirstRowWidgets(50, 'The Quint', 'https://www.thequint.com/',
                    'https://lh3.googleusercontent.com/kH1AO_lWcgdwfFoKKtNt7R6N87DkHZD011OUk4Fg3cwmkxd-auetMJc0cOKdJPCEM0Cg=s180'),
              ],
            ),
            Divider(
              indent: sizeInfo.width * 0.4,
              endIndent: sizeInfo.width * 0.4,
              thickness: 1.5,
            ),
            SizedBox(height: 25),
            TitleCard('Payment', 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FirstRowWidgets(50, 'SBI', 'https://www.sbi.co.in/',
                    'https://lh3.googleusercontent.com/-EhLlpZOCHTXahHvx3_-O5rosAnwCYkzdhjwysn9yVVV9SzVcYaC-qxamDj5lp-YTA=s180-rw'),
                FirstRowWidgets(50, 'Paytm', 'https://paytm.com/',
                    'https://lh3.googleusercontent.com/k7yz57K2OxhNrPNKF2U18Zcv9rodOu7CfWh47U15FFUN8-_B0hQfXsM-BaLG0gOtvw=s180-rw'),
                FirstRowWidgets(50, 'Mobikwik', 'https://www.mobikwik.com/',
                    'https://lh3.googleusercontent.com/aiHDglZD23elFpL62MtKXUhwj6jjV4TjfKrBxHMfV3JXmprRnCkEUObBV3bN2gaUYbA=s180-rw'),
                FirstRowWidgets(50, 'Free Charge', 'https://www.freecharge.in/',
                    'https://lh3.googleusercontent.com/9MgLa0ekOqhj_OosRcJis7O6Y20ckxK7T0gMnIQ2fnhauoT-UZSJqHk2uRoED2eeOA=s180-rw'),
              ],
            ),
            Divider(
              indent: sizeInfo.width * 0.4,
              endIndent: sizeInfo.width * 0.4,
              thickness: 1.5,
            ),
            SizedBox(height: 25),
            TitleCard('Shopping', 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FirstRowWidgets(50, 'Amazon', 'https://www.amazon.in/',
                    'https://lh3.googleusercontent.com/TpxeOgptQworHjromT4yoo05oHk72dSE0pVQowPfb3u3rozTwLjYUHxTpEzIYMemomQ=s180-rw'),
                FirstRowWidgets(50, 'Flipkart', 'https://www.flipkart.com/',
                    'https://lh3.googleusercontent.com/q8hxnbpJCYfHipSOG_5tZe5jK_89T6QIsqrEklvGpMFKH8b98pDHJf2tPcn2bxEN96ON=s180-rw'),
                FirstRowWidgets(50, 'Ali Express', 'https://aliexpress.com/',
                    'https://lh3.googleusercontent.com/8XePOjdAbTm12TJ4Cu3-DnQxT7kG-ptsu6yqXMusO5nbCs1s9GeVPwDMqMAMi4rxTYSV=s180-rw'),
                FirstRowWidgets(50, 'Paytm Mall', 'https://paytmmall.com/',
                    'https://lh3.googleusercontent.com/7NwF3V-2xx4xRmMRbGXjdCeK7UMJ2D-BmZnGgGMEsbGcR-J1rc3W6BaboH-TuSh6hA=s180-rw'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FirstRowWidgets(50, 'Snapdeal', 'https://www.snapdeal.com/',
                    'https://lh3.googleusercontent.com/IfMz_US0gMwcVYtNNjQPEglG4cHLW51zitBhGZ0nmAYEXTIuIdCjUaZ_Xg9H6sDVxQ=s180-rw'),
                FirstRowWidgets(
                    50,
                    'Club Factory',
                    'https://www.clubfactory.com/',
                    'https://lh3.googleusercontent.com/ktwTe8JTsoJ7K6Is7Xz7nFdTBAUGTGrKbE1y6OtOIbGFmZrrhHDSNt_sGgpuscTJcYY=s180-rw'),
                FirstRowWidgets(50, 'Shopclues', 'https://www.shopclues.com/',
                    'https://lh3.googleusercontent.com/oaOz1gpJtbH4NiD0qjNBN-TjNIkR7jKkhbmN5vHVwQcVHJhSswoXn3IffwY6EUde5H0k=s180-rw'),
                FirstRowWidgets(50, 'Mynthra', 'https://www.myntra.com/',
                    'https://lh3.googleusercontent.com/G87iT9dhwxwtgl5UA8SIqwp7I0GTlItyuR5mNL7vUOgP2SN8JyXigaiOpxKRaCXI22w=s180-rw'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FirstRowWidgets(50, 'AJIO', 'https://www.ajio.com/',
                    'https://lh3.googleusercontent.com/RWNQyHoMPJ-Z8ApQhQchXsfoBXrj3By1cf49GPRK6-hYiIv0RL6Z1fdZl1OAUpqHCB8=s180-rw'),
                FirstRowWidgets(50, 'Big Basket', 'https://www.bigbasket.com/',
                    'https://lh3.googleusercontent.com/EuiZnkT8aEKjXDLX74DTp1VRIwWaeRa8Dvo-LOGAxy1FPQ8GzABTIRenksiM-A7Oz48g=s180-rw'),
                FirstRowWidgets(50, 'Grofers', 'https://www.grofers.com/',
                    'https://lh3.googleusercontent.com/xg-DIKlu7oizfAlE8sRHRjjjVqtBwo19qQr_L2e_tSUh-NWSDi1H--8YVuc1V85c88Rs=s180-rw'),
                FirstRowWidgets(50, 'Quikr', 'https://www.quikr.com/',
                    'https://lh3.googleusercontent.com/l5vy1ANtkBFog57kFEGOtPKYH7HDhnUFePivRBa3LbyzgqohMGEMfQOkYCRu-gQgRQ=s180'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FirstRowWidgets(50, 'OLX', 'https://www.olx.in/',
                    'https://lh3.googleusercontent.com/tYdcwxICaq7q-Qe_jmQ-2YIMfZ011Tap8PtWLOOpLx23LJLvqr_YziUqek9nBEdVJE8=s180'),
                FirstRowWidgets(50, 'Ebay', 'https://www.ebay.com/',
                    'https://lh3.googleusercontent.com/31-mJUIynIfQBizOn-w1yWLKHBxVeRKA3gz348_E3K-TnuEaqCjn_-Fr9j0yQ6i0y5E=s180'),
                FirstRowWidgets(50, '2Gud', 'https://www.2gud.com/',
                    'https://lh3.googleusercontent.com/bKi_UJ4lvNHh8fHmBp2eX5X0scwnB2Aunzd8WI3hUqbaM-Xvd7jqnmAkGc7IjN63C8g9=s180'),
                FirstRowWidgets(
                    50,
                    'Max Fashion',
                    'https://www.maxfashion.com/',
                    'https://lh3.googleusercontent.com/G6CTTmXabDiuM42IQUUuKc0cCunygI55Ddkr8R2CmT8jFeXxo4zbCSK2Zbv8iGPED_w=s180'),
              ],
            ),
            Divider(
              indent: sizeInfo.width * 0.4,
              endIndent: sizeInfo.width * 0.4,
              thickness: 1.5,
            ),
            SizedBox(height: 25),
            TitleCard('Jobs', 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FirstRowWidgets(50, 'Naukri', 'https://naukri.com/',
                    'https://lh3.googleusercontent.com/n_2OvXGMCLjuxrpE82CitXL_99bKg-jsRl60MW1NwMVAHgK_-stNBJyn-AjMD83qmZU=s180'),
                FirstRowWidgets(50, 'Glassdoor', 'https://www.glassdoor.com/',
                    'https://lh3.googleusercontent.com/lDHCg7UucsvMg6aiT-Gddk-flkeuRCy6j6dNjmIvsW0eQCKtHcKosw4nxPXRnhnXufmn=s180-rw'),
                FirstRowWidgets(50, 'Indeed', 'https://www.indeed.co.in/',
                    'https://lh3.googleusercontent.com/jj2z8DZ-Z5rV-Y4IY0ZklkuPjCchjeeisflFD0dU_zlJNpbUJkDTQpAMlc5rwutKFSU=s180'),
                FirstRowWidgets(50, 'Monster', 'https://www.monsterindia.com/',
                    'https://lh3.googleusercontent.com/1kJygXRdW7PuBmMiWOGHy7c9QbeJ56eNcaNYdQviXi5xtI9ZF3gFIjLmhQTZG2CwpqX2=s180'),
              ],
            ),
            Divider(
              indent: sizeInfo.width * 0.4,
              endIndent: sizeInfo.width * 0.4,
              thickness: 1.5,
            ),
            // TitleCard('Dating', 20),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: <Widget>[
            //     FirstRowWidgets(50, 'Tinder', 'https://tinder.com/',
            //         'https://lh3.googleusercontent.com/stlBGKS482zWajOTk82IXFZhr22hk_NQewNOAJ0IeptPO73qfNesCyfNwW1-xwBiwv0=s180'),
            //     FirstRowWidgets(50, 'Happn', 'https://www.happn.com/',
            //         'https://lh3.googleusercontent.com/O1XquBzqm2MjscNtAI84wmnR2Q89L6aO9xjPm9MwFeu-_1CLqGV4LBSIfhUjeTWByQQ=s180'),
            //     FirstRowWidgets(50, 'OkCupid', 'https://www.okcupid.com/',
            //         'https://lh3.googleusercontent.com/zdy6PIoCcUg-HxF6VzDnnuYy0jRHvnz0UPBvp4f6_YBrR_mBwFtHO19jV_JVIMLrihQ=s180'),
            //     FirstRowWidgets(50, 'Paktor', 'https://www.gopaktor.com/',
            //         'https://lh3.googleusercontent.com/2GNmIfqAemx7TikrljIImn8O_WLlF5SQA78qUrk6FN-hfnGBiYutsXXFz5RSH--4Dw=s180'),
            //   ],
            // ),
            // Divider(
            //   indent: sizeInfo.width * 0.4,
            //   endIndent: sizeInfo.width * 0.4,
            //   thickness: 1.5,
            // ),
            SizedBox(height: 25),
            TitleCard('Music', 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FirstRowWidgets(50, 'Gaana', 'https://gaana.com/',
                    'https://lh3.googleusercontent.com/WbMOtegwCi2bltxEiAKWCFLPMnEnN05FQ1NGdednkiCJZZj8e8KQDIEkQ_43f6MuX78=s180-rw'),
                FirstRowWidgets(50, 'Wynk', 'https://www.wynk.in/',
                    'https://lh3.googleusercontent.com/WsLGolbognnEQ5OZyaQmwnPBRPqreFMbuyVemHEKQwgvBJBfupxigoecBydCXes4ciHS=s180-rw'),
                FirstRowWidgets(50, 'Hungama', 'https://www.hungama.com/',
                    'https://lh3.googleusercontent.com/oTUrtyjIUxN67zeA7te9KWI2Tb3c7P_Yfsdbl6eFGX92owUnMw0wJHDVHrVrfY6BgEk=s180-rw'),
                FirstRowWidgets(50, 'JioSaavn', 'https://www.jiosaavn.com/',
                    'https://lh3.googleusercontent.com/FWHOs52Nk7BJi_FhwJFhuZpijl9L_A2GxwE7y62hhOeHNZUP5z2jrWgHp4tdKf8w06U=s180-rw'),
              ],
            ),
            Divider(
              indent: sizeInfo.width * 0.4,
              endIndent: sizeInfo.width * 0.4,
              thickness: 1.5,
            ),
            SizedBox(height: 25),
            TitleCard('Others', 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FirstRowWidgets(50, 'RentoMojo', 'https://www.rentomojo.com/',
                    'https://lh3.googleusercontent.com/mFz_A7JZEejA084731fU1zPQFoUOiqAGySa9HCZQmobz-x9jXA5iEcAzDuncbDISYg=s180-rw'),
                FirstRowWidgets(50, 'UrbanClap', 'https://www.urbanclap.com/',
                    'https://lh3.googleusercontent.com/W6nw7wKPPlalpwHhP-qOSqoiFeVwATDKxbTj6QUm6VIJjyTS-Uq_aqvRP8-1f65z7c4=s180-rw'),
                FirstRowWidgets(50, 'JD', 'https://www.justdial.com/',
                    'https://lh3.googleusercontent.com/F6SHkgLMR6vIfIKqs13pKKrPOkdkcACkVPougKAhI31C5XmbECB-WsTX36pRBbv-aMXQ=s180-rw'),
                FirstRowWidgets(50, 'Ola', 'https://www.olacabs.com/',
                    'https://lh3.googleusercontent.com/4rrRCFJo4GSxHBON0M8OIwKNfT6b5zOA20fMniJKaeU3CUylFA9i6vazeazxKwZU6Ng=s180-rw'),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FirstRowWidgets(50, 'Swiggy', 'https://www.swiggy.com/',
                    'https://lh3.googleusercontent.com/A8jF58KO1y2uHPBUaaHbs9zSvPHoS1FrMdrg8jooV9ftDidkOhnKNWacfPhjKae1IA=s180-rw'),
                FirstRowWidgets(50, 'Zomato', 'https://www.zomato.com/',
                    'https://lh3.googleusercontent.com/bk1WWaf0R9NpyYleMlg9C8ttglyT0T61jqAfrNylBRMPorCVh-QuGjxTc1inAPIxnQ=s180-rw'),
                FirstRowWidgets(50, 'Uber', 'https://www.uber.com/',
                    'https://lh3.googleusercontent.com/qy_wZ92sFQccojEtscg52vtdAQmCIeQ4jsybMPmuML9Or7_SEOyrt0Jn0wyG-l2Fyw=s180-rw'),
                FirstRowWidgets(50, 'Lenskart', 'https://www.lenskart.com/',
                    'https://lh3.googleusercontent.com/wPGVqEoS2gtvGLHPaifWXPy53S-5-zjq_Cl5YBhpAVQ_FtQ0gicsKmOCgQrg1yQIzus=s180-rw'),
              ],
            ),
            SizedBox(height: 100),
          ],
        )),
      ),
    );
  }
}

class FirstRowWidgets extends StatefulWidget {
  double size;
  String title;
  String navurl;
  String imgurl;

  FirstRowWidgets(this.size, this.title, this.navurl, this.imgurl);

  @override
  _FirstRowWidgetsState createState() => _FirstRowWidgetsState();
}

class _FirstRowWidgetsState extends State<FirstRowWidgets> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    SociaWebview(widget.title, widget.navurl)));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 6),
        child: Column(children: <Widget>[
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(blurRadius: 20, color: Colors.grey.withOpacity(.20))
              ],
            ),
            height: widget.size,
            width: widget.size,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(widget.size * 0.5),
                child: CachedNetworkImage(
                  imageUrl: widget.imgurl,
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            width: 85,
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
            child: Text(widget.title,
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
            color: Colors.deepOrange[900],
            fontSize: size - 2,
            letterSpacing: 1,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
