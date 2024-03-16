import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/shop.dart';
import 'button.dart';
import 'count.dart';
//import 'shop.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment(1, -0.7),
                        child: Column(
                          children: [
                          Dashboard07CountCardCopyWidget(),
                          Dashboard07CountCardCopyWidget(),
                          shop(),
                          ])),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: ClipRRect(
                        borderRadius:  BorderRadius.circular(0),
                        child: Image(image: AssetImage('assets/images/farm.png')),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(25, 150, 25, 0),
                        child: Expanded(
                          child: GridView(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 5,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 10,
                              childAspectRatio: 1,
                              ),
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              children: [
                                plot(),
                                plot(),
                                plot(),
                                plot(),
                                plot(),
                                plot(),
                                plot(),
                                plot(),
                                plot(),
                              ],
                            ),
                        ),
                        ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ),
      ),
    );
  }
}
