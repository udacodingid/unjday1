import 'dart:async';

import 'package:flutter/material.dart';
import 'package:unjday1/main.dart';

class PageSplashScreen extends StatefulWidget {
  const PageSplashScreen({Key? key}) : super(key: key);

  @override
  _PageSplashScreenState createState() => _PageSplashScreenState();
}

class _PageSplashScreenState extends State<PageSplashScreen> {

  //method untuk timer
  nextPage()async{
    var duration = Duration(seconds: 10);
    return Timer(
      duration, (){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)
        => PageHomeUtama()
      ), (route) => false);
    }
    );
  }

  //proses do in background
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nextPage();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('gambar/logo_unj.png', height: 145,),
              Text('UNJ Apps',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
