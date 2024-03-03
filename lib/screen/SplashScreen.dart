import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:daily_quote/screen/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => HomeScreen(),
          )
      );
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe3e7eb),
      body:Container(
        margin:EdgeInsets.all(0),
        padding:EdgeInsets.all(0),
        width:MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color:Color(0xffd5d8db),
          shape:BoxShape.rectangle,
          borderRadius:BorderRadius.zero,
          border:Border.all(color:Color(0x4d9e9e9e),width:1),
        ),
        child:
        Align(
          alignment:Alignment.bottomCenter,
          child:Container(
            margin:EdgeInsets.all(0),
            padding:EdgeInsets.all(0),
            width:MediaQuery.of(context).size.width,
            height:MediaQuery.of(context).size.height * 0.75,
            decoration: BoxDecoration(
              color:Color(0xffe2e6eb),
              shape:BoxShape.rectangle,
              borderRadius:BorderRadius.only(topRight: Radius.circular(80.0)),
              border:Border.all(color:Color(0xffcbcfd2),width:1),
            ),
            child:
            Align(
              alignment:Alignment(0.0, -0.5),
              child:///***If you have exported images you must have to copy those images in assets/images directory.
              Image(
                image:AssetImage("assets/images/image-1.png"),
                height:100,
                width:MediaQuery.of(context).size.width * 0.8,
                fit:BoxFit.contain,
              ),
            ),
          ),),
      ),
    );
  }
}