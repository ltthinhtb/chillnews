import 'package:chillnews/Screens/LoginPage.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{

  Color PrimaryColor =  Color(0xff109618);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: PrimaryColor,
          title: Text("ChillNews"),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: null,),
            IconButton(icon: Icon(Icons.notifications), onPressed: null)
          ],
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.white,
            indicatorWeight: 6.0,
            onTap: (index){
              setState(() {
                switch (index) {
                  case 0:
                    PrimaryColor= Color(0xffff5722);
                    break;
                  case 1:
                    PrimaryColor= Color(0xff3f51b5);
                    break;
                  case 2:
                    PrimaryColor= Color(0xffe91e63);
                    break;
                  case 3:
                    PrimaryColor= Color(0xff9c27b0);
                    break;
                  case 4:
                    PrimaryColor= Color(0xff2196f3);
                    break;
                  default:
                }
              });
            },
            tabs: <Widget>[
              Tab(
                child: Container(
                  child: Text('Home',style: TextStyle(fontSize: 18.0)),
                ),
              ),
              Tab(
                child: Container(
                  child: Text('Home',style: TextStyle(fontSize: 18.0),),
                ),
              ),
              Tab(
                child: Container(
                  child: Text('Home',style: TextStyle(fontSize: 18.0)),
                ),
              ),
              Tab(
                child: Container(
                  child: Text('Home',style: TextStyle(fontSize: 18.0)),
                ),
              ),
              Tab(
                child: Container(
                  child: Text('Home',style: TextStyle(fontSize: 18.0)),
                ),
              )
            ],
          ),
        ),
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: Text('User'),
                accountEmail: Text('user@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                ),
                decoration: new BoxDecoration(
                    color: Colors.blue
                ),
              ),

              InkWell(
                onTap:(){},
                child: ListTile(
                  title: Text('HomePage'),
                  leading: Icon(Icons.home),
                ),
              ),

              InkWell(
                onTap:(){},
                child: ListTile(
                  title: Text('My accounts'),
                  leading: Icon(Icons.person),
                ),
              ),

              InkWell(
                onTap:(){},
                child: ListTile(
                  title: Text('My Orders'),
                  leading: Icon(Icons.shopping_basket),
                ),
              ),

              InkWell(
                  onTap:(){},
                  child: ListTile(
                    title: Text('Categoris'),
                    leading: Icon(Icons.category),
                  )
              ),

              InkWell(
                  onTap:(){},
                  child: ListTile(
                    title: Text('Favourites'),
                    leading: Icon(Icons.favorite),
                  )
              ),

              Divider(),

              InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('Settings'),
                    leading: Icon(Icons.settings),
                  )
              ),

              InkWell(
                  onTap: (){},
                  child: ListTile(
                    title: Text('About'),
                    leading: Icon(Icons.help, color: Colors.red,),
                  )
              )

            ],
          ),
        ),
        //backgroundColor: Colors.blue,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 12.0, right: 12.0,top: 30.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
