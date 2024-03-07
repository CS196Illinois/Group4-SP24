import 'package:flutter/material.dart';

class plot extends StatefulWidget {
  const plot({super.key});

  @override
  State<plot> createState() => _plotState();
}

class _plotState extends State<plot> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: FilledButton(
      onPressed: () {}, 
      child: Image(image: AssetImage('assets/images/seed.png'))
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