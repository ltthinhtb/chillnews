import 'package:chillnews/Screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:chillnews/ulti/backgound.dart';
import 'package:gradient_text/gradient_text.dart';

class OnbroadingPage extends StatefulWidget {
  @override
  _OnbroadingPageState createState() => _OnbroadingPageState();
}

class _OnbroadingPageState extends State<OnbroadingPage> {
  PageController _controller;
  int _currentpage = 0;
  bool LastPage = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: _currentpage );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();

  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
           // stops: [0.1,0.4,0.6,0.9],
            colors: [Colors.yellow, Colors.red, Colors.indigo, Colors.teal],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                PageView.builder(
                  itemCount: PageList.length,
                  controller: _controller,
                  onPageChanged: (index){
                    setState(() {
                      _currentpage = index ;
                      if (_currentpage == PageList.length - 1){
                        LastPage = true;
                      }
                      else {
                        LastPage = false;
                      }
                    });
                  },
                  itemBuilder: (context, index){
                    return Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        AnimatedBuilder(
                          animation: _controller,
                          builder: (context, child){
                            var page = PageList[index];
                            var delta;
                            var y = 1.0;
                            if (_controller.position.haveDimensions){
                              delta = _controller.page - index;
                               y = 1 - delta.abs().clamp(0.0, 1.0);
                            };
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Image.asset(page.imageUrl),
                                Container(
                                  height: 100.0,
                                  child: Stack(
                                    children: <Widget>[
                                      Center(
                                        child: GradientText(
                                          page.title,
                                          gradient: LinearGradient(
                                            colors: page.titleGradient
                                          ),
                                          style: TextStyle(
                                            fontSize: 60.0,
                                            fontFamily: "Montserrat-Black",
                                            letterSpacing: 1.0,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Transform(
                                    transform: Matrix4.translationValues(0.0, 50*(1-y), 0.0),
                                    child: Text(page.body,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontFamily: "Montserrat-Medium",
                                      color: Color(0xFF9B9B9B),
                                    ),),
                                  ),
                                )
                              ],
                            );
                          },
                        )
                      ],
                    );
                  },
                ),
                Positioned(
                  left: 30.0,
                  bottom: 35.0,
                  child: Container(
                    width: 160.0,
                    child: PageIndicator(_currentpage, PageList.length),
                  ),
                ),
                Positioned(
                  right: 30.0,
                  bottom: 30.0,
                  child: LastPage ? FloatingActionButton(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                    ),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                    },
                  ): Container()
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
