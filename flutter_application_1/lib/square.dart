import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MySquare extends StatelessWidget {
  final Widget child;

  MySquare({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
                child: Container(
                  height: 200,
                  color: Colors.deepPurple[200],
                  child: Center(
                    child: ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 16,
                    itemBuilder: (context, index) {
                      return MyCircle(); }
            )
          )
        )
      ));
  }

}

class MyCircle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pinkAccent,
        ),  
      )
    );
  }
}