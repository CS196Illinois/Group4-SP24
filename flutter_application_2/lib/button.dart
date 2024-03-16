//import 'dart:html';
import 'count.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:flutterflow_ui/flutterflow_ui.dart';



class plot extends StatefulWidget {
  const plot({super.key});

  

  @override
  State<plot> createState() => _plotState();
}

class _plotState extends State<plot> {

final List currentImage =[
'assets/images/seed1.png',
'assets/images/seed2.png',
'assets/images/seed3.png',
'assets/images/seed4.png',
];
int i = 0;
int s = 0;
String current_image = 'assets/images/seed.png';



void plots() {
  setState(() {
    seedStatus();
   /*  Ticker((elapsed) { 
      i++;
    }); */
    //TimeOfDay now = TimeOfDay.now();
    //DateTime threeHoursFromNow = DateTime.now().add(Duration(seconds: 10));
    if (seedAvailability == true) {
    if (i < 1) {
      current_image = currentImage[i];
      i++;
      seedCount -= 1;
     // now = TimeOfDay.now();
    } else {
      if (i == 30) {
        current_image = 'assets/images/seed.png';
        i = 0;
      }
    }
}});
}



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: AnimatedSwitcher(
        duration: Duration(seconds: 1),
        child: FloatingActionButton(
          foregroundColor: Colors.amber[700],
          backgroundColor: Colors.grey[700],
        hoverColor: Colors.deepOrange[600],
        onPressed: () {
          setState(() =>
            plots()
          );
        }, 
        child: Image.asset(
          current_image, 
          width: 70,
          height: 70,
          )
        ),
      ),
      );
}


 /*  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: FilledButton(
      onPressed: () {}, 
      child: Image(image: AssetImage('assets/images/seed.png'))
      ),
      );
    */

}
/* class plot2 extends StatefulWidget {
  const plot2({super.key});

  @override
  State<plot2> createState() => _plot2State();
}

class _plot2State extends State<plot2> {

void plots2(State plot2State) {
  setState(() {
    plot2State = _plot2State();
  });
}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: AnimatedSwitcher(
        duration: Duration(seconds: 1),
        child: FilledButton(
        onPressed: () {
          setState(() =>
            plots2(_plot2State())
          );
        }, 
        child: Image(image: AssetImage('assets/images/farm.png'))
        ),
      ),
      );
  } */
