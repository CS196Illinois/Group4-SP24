import 'package:flutter/material.dart';
//import 'shoppinglist.dart';
class shopper extends StatefulWidget {
  

  @override
  State<shopper> createState() => _shopperState();
}

class _shopperState extends State<shopper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: Column(
        children: [Padding(
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
             itemCount: 3,
             itemBuilder: (context, index) {
              return ElevatedButton(onPressed: null, child: null);
             }
            )
          )
        )
      ))
      ],
      ),
    );
  }
}