import 'package:daily_quote/components/ButtonMenu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/image-bg.png"),
            fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7),                                                    BlendMode.srcOver)
          ),
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.all(0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.40,
                  decoration: BoxDecoration(
                    color: Color(0xffe1e5e9),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.zero,
                    border: Border.all(color: Color(0x4d9e9e9e), width: 1),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(5.0, 50.0, 5.0, 10.0),
                        child: Row(
                          children: [
                            ButtonMenu(
                              iconData: Icons.settings,
                              buttonText: 'QUOTE OF THE DAY',
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                        child: Row(
                          children: [
                            ButtonMenu(
                              iconData: Icons.settings,
                              buttonText: 'ABOUT',
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(5.0, 10.0, 5.0, 10.0),
                        child: Row(
                          children: [
                            ButtonMenu(
                              iconData: Icons.settings,
                              buttonText: 'QUIT',
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                )),
            Column(
              mainAxisAlignment:MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.center,
              mainAxisSize:MainAxisSize.max,
              children: [
                Padding(
                  padding:EdgeInsets.symmetric(vertical: 5,horizontal:5),
                  child:Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    crossAxisAlignment:CrossAxisAlignment.center,
                    mainAxisSize:MainAxisSize.max,
                    children:[

                      ///***If you have exported images you must have to copy those images in assets/images directory.
                      Image(
                        image:AssetImage("assets/images/Frame-16.png"),
                        height:MediaQuery.of(context).size.height * 0.07,
                        width:MediaQuery.of(context).size.width * 0.15,
                        fit:BoxFit.cover,
                      ),
                      Container(
                        margin:EdgeInsets.zero,
                        padding:EdgeInsets.zero,
                        width:MediaQuery.of(context).size.width * 0.2,
                        height:MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                          color:Color(0x00ffffff),
                          shape:BoxShape.rectangle,
                          borderRadius:BorderRadius.zero,
                        ),
                        child:
                        ///***If you have exported images you must have to copy those images in assets/images directory.
                        Image(
                          image:AssetImage("assets/images/button-config.png"),
                          height:100,
                          width:140,
                          fit:BoxFit.cover,
                        ),
                      ),

                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ///***If you have exported images you must have to copy those images in assets/images directory.
                    Image(
                      image: AssetImage("assets/images/text-main-page.png"),
                      height: MediaQuery.of(context).size.height * 0.48,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.contain,
                    ),
                  ],
                )
              ],
            )
          ],
        ), /* add child content here */
      ),
    );
  }
}
