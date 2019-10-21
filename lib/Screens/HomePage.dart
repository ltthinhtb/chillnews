import 'package:chillnews/Screens/LoginPage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white60,
          title: Text("ChillNews",style: TextStyle(color: Colors.red, fontSize: 30.0),),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.speaker_notes, size: 30.0,color: Colors.grey,), onPressed: (){}),
            IconButton(icon: Icon(Icons.search,size: 30.0,), onPressed: null),
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
        //    indicatorWeight: 6.0,
            tabs: <Widget>[
              Tab(
                child: Container(
                  child: Text('Trending',style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                ),
              ),
              Tab(
                child: Container(
                  child: Text('Du Lịch',style: TextStyle(fontSize: 16.0, color: Colors.grey),),
                ),
              ),
              Tab(
                child: Container(
                  child: Text('Phim',style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                ),
              ),
              Tab(
                child: Container(
                  child: Text('Thời Trang',style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                ),
              ),
              Tab(
                child: Container(
                  child: Text('Thể Thao',style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                ),
              ),
              Tab(
                child: Container(
                  child: Text('Dịch Vụ',style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                ),
              ),
              Tab(
                child: Container(
                  child: Text('Tình Yêu',style: TextStyle(fontSize: 16.0, color: Colors.grey)),
                ),
              )
            ],
          ),
        ), //backgroundColor:
        body: TabBarView(
          children: <Widget>[
            
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30.0,),title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.trending_up,size: 30.0,),title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow,size: 30.0,),title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications,size: 30.0,),title: Text(""),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings,size: 30.0,),title: Text(""),
            )
          ],
        ),// Colors.blue,
      ),
    );
  }
}
