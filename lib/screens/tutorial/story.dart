import 'package:aventura_com_bako/screens/tutorial/game.dart';
import 'package:aventura_com_bako/screens/tutorial/qr_code.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

class StoryTutorial extends StatefulWidget {
  @override
  _StoryTutorialState createState() => _StoryTutorialState();
}

class _StoryTutorialState extends State<StoryTutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/background-splash.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 80.h,
                ),
                Card(
                  child: SizedBox(
                    width: 350.w,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          height: 100.h,
                          width: 350.h,
                          child: Center(child: Image.asset('assets/idv.png')),
                        ),
                        Container(
                          color: Colors.green,
                          height: 300.h,
                          width: 350.w,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w),
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 10.h),
                                  SizedBox(
                                    height: 150.h,
                                    child: Image.asset('assets/icons/book.png'),
                                  ),
                                  Text(
                                    'HISTÓRIAS',
                                    style: TextStyle(
                                      fontSize: 25.sp,
                                      color: Colors.amberAccent[100],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 15.h),
                                  Center(
                                    child: Text(
                                      'Conheça mais sobre o bosque e suas curiosidades e aprenda',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20.sp),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      color: Colors.green,
                      child: Text(
                        'Anterior',
                        style: TextStyle(
                          color: Colors.amberAccent[100],
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    GameTutorial()));
                      },
                    ),
                    SizedBox(width: 50.w),
                    RaisedButton(
                      child: Text(
                        'Próximo',
                        style: TextStyle(color: Colors.amberAccent[100]),
                      ),
                      color: Colors.green,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    QrCodeTutorial()));
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 270.h,
                  child: Center(
                    child: Image.asset('assets/bako_vetor.png'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
