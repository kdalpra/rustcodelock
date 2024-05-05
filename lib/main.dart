// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:url_launcher/url_launcher.dart';


const String testDevice = '80B4A19147066E6CE182BDF9C33EAEB0';
final Uri _url2 = Uri.parse("https://klayddesign.com");
final Uri toLaunch =
Uri(scheme: 'https', host: 'www.amzn.to', path: '3Dwr9Fp/');

Future<void> _launchUrl() async {
  if (!await launchUrl(_url2)) {
    throw 'Could not launch $_url2';
  }
}
Future<void> _launchInWeb(Uri url) async {
  if (!await launchUrl(
    url,
    mode: LaunchMode.inAppWebView,
    webViewConfiguration: const WebViewConfiguration(enableJavaScript: true),

  )) {
    throw 'Could not launch $url';
  }
}

Future<void> _launchURL2(String url) async {
  final Uri uri = Uri(scheme: "https", host: url, path: "friendly-play-crafting-design-T-Shirt/dp/B0999QZWWS?crid=2BM9CJI7M8ZXI&keywords=rust+game&qid=1662786865&sprefix=rust+game%2Caps%2C58&sr=8-1&linkCode=ll1&tag=kl9y-20&linkId=f471ca9c197b8655736c25e6c26fb1b8&language=en_US&ref_=as_li_ss_tl");
  if(!await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  )) {
    throw "Can not launch url";
  }
}

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num1 = 6;
  int num2 = 9;
  int num3 = 6;
  int num4 = 9;
  int attLoad = 0;

  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    nonPersonalizedAds: true,
    keywords: <String>['Game','Gaming','Arcade','Fun','India','Bored','Entertainment','Book','Rust','PC'],
  );

  InterstitialAd _interstitialAd = InterstitialAd(
    adUnitId: "ca-app-pub-2273073266916535/2546439619",
  );

  BannerAd _bannerAd = BannerAd(adUnitId: 'ca-app-pub-2273073266916535/5049906963', size: AdSize.banner);

  BannerAd createBannerAd(){
    return BannerAd(
        adUnitId: 'ca-app-pub-2273073266916535/5049906963',
        size: AdSize.banner,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event){
          print("BannerAd $event");
        }
    );
  }


  @override
  void initState(){
    FirebaseAdMob.instance.initialize(
      appId: 'ca-app-pub-2273073266916535~4118585783',
    );
    _bannerAd = createBannerAd()..load()..show();
    super.initState();

  }
  @override
  void dispose(){
    _bannerAd.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MASTER CODE',
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        leading: GestureDetector(
          onTap: (){
            _launchURL2("www.amazon.com");

          },
          child: Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.deepOrange,
              Colors.red,
              //Color(0xFF11249F),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 70,
                width: 220,
                color: Colors.grey[700],
                child: Text(
                  '$num1 ' + '$num2 ' + '$num3 ' + '$num4 ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.grey,
                    child: Text(
                      '7',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.grey,
                    child: Text(
                      '8',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.grey,
                    child: Text(
                      '9',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.grey,
                    child: Text(
                      '4',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.grey,
                    child: Text(
                      '5',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.grey,
                    child: Text(
                      '6',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.grey,
                    child: Text(
                      '1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.grey,
                    child: Text(
                      '2',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.grey,
                    child: Text(
                      '3',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: <Widget>[
                  Container(
                    width: 145,
                    height: 70,
                    color: Colors.grey,
                    child: Text(
                      '0',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 70,
                    height: 70,
                    color: Colors.grey,
                    child: Text(
                      'C',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 220,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          var randNum = new Random();
                          num1 = randNum.nextInt(10);
                          num2 = randNum.nextInt(10);
                          num3 = randNum.nextInt(10);
                          num4 = randNum.nextInt(10);
                        });
                        if(attLoad == 0){
                          _interstitialAd.load();
                          print("load");
                          attLoad+=1;
                        }
                        else if(attLoad == 8){
                          attLoad = 0;
                          _interstitialAd.show();
                          print("show");
                          print(attLoad);
                        }
                        else{
                          attLoad +=1;
                          print("nothing");
                        }
                      },
                      child: Text(
                        'Generate',
                        style: TextStyle(
                          fontSize: 45,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      //color: Colors.green[700],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),



            ],
          ),
        ),
      ),
    );
  }
}


