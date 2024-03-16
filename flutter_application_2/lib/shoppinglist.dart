import 'package:flutter/material.dart'; 
import 'package:flutter/widgets.dart';

 

 class Item {
  Item({
    required this.headerText,
    required this.expandedwidget,
    this.isExpanded = false,
  }); 
  String headerText;
  String expandedwidget;
  bool isExpanded;
}
 
 class lister extends StatefulWidget {
 
  
 

  @override
  State<lister> createState() => _listerState();

 }
class _listerState extends State<lister> {
  final List<Item> _data = List<Item>.generate(
    10, 
  (int index) {
    return Item(
      headerText: 'Item $index', 
      expandedwidget: 'Item $index sucks',
      
      );
  });
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionPanelList(
        expansionCallback: (int index, bool isExpanded) {
          setState(() {
            _data[index].isExpanded = !isExpanded;
          });
        },
        children: _data.map<ExpansionPanel>((Item item) {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return Text('pls work');
              },
            body: Text('I dont know what is going on'),
            );
        }).toList(),
      ),
    );
  }
}