 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
 import 'package:flutter_application_1/square.dart';
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

  
  
  final List posts = [
    'post 1', 
    'post 2', 
    'post 3',
    'post 4',
    'post 5',
    'post 6',
    'post 7',
    'post 8',
    'post 9',
    'post 10',
    'post 11',
    'post 12',
    'post 13',
    'post 14',
    'post 15',
    'post 16',
    'post 17',

    ];
  final List stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
    'story 6',
    'story 7',
    'story 8',
    'story 9',
    'story 10',
    'story 10',
    'story 10',
    'story 10',
    'story 10',
    'story 10',
    'story 10',
    'story 10',
    'story 10',
    'story 10',
    'story 10',
    'story 10',
    'story 10',
    'story 10',
    'story 10',
    'story 10',
    'story 10',
    'story 10',

  ];
 
  

 class _ExpandsssState extends StatefulWidget {
  const _ExpandsssState(Key? key) : super(key: key);
  
 

  @override
  State<_ExpandsssState> createState() => __ExpandsssStateState();

 }
class __ExpandsssStateState extends State<_ExpandsssState> {
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


  class HomePage extends StatefulWidget{
    const HomePage({Key? key}) : super(key: key);

    @override
    HomePageState createState() => HomePageState();
  }

class HomePageState extends State<HomePage> {

    int selectedIndex = 0;
  void _selectedIndex(int x) {
    setState(() {
    selectedIndex = x;
  });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurpleAccent,
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            children: [
              DrawerHeader(child: Icon(Icons.icecream)),
              DrawerButton(),
            ]
                ),
        )),
      body: Column(
        children: [
          ElevatedButton(
            child: Text('Tasks'),
            onPressed: () {
              showModalBottomSheet(
                context: context, 
                builder: (BuildContext context) {
                  return SizedBox.expand(
                    child: Padding(
                      padding: EdgeInsets.all(50.0
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: MySquare( 
                          child: SizedBox(
                          child: Column(
                            children: [
                              MyCircle(),
                            ],
                          ))) 
                                        ),
                    ));
                } );
            
            } ),
          BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            items: 
          [BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'Reels'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account')],

          ),

          Expanded(
            child: Container(
              constraints: BoxConstraints.expand(),
               child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  return MyCircle();
                }
                ),
            ),
          ), 

          Expanded(
            flex: 3,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return MySquare(
                    child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: posts.length,
                    itemBuilder: (context, index) {
                      return ExpansionPanelList();}),
            /*ListView.builder(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: posts.length, 
              itemBuilder: (context, index) {
              return MySquare(child: ExpansionPanelList(), image: Image.asset('image'));
                    }),*/
                );}))],
             ),
    );
  }

  }