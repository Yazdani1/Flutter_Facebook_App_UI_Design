import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  String pic1 = "https://images.pexels.com/photos/1839564/pexels-photo-1839564.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            //First Cotainer start

            Container(
              height: 250.0,
              color: Color(0xFFffffff),
              margin: EdgeInsets.only(top: 20.0),
              child: Column(
                children: <Widget>[

                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("facebook",
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(5.0),
                                margin: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFc9c8cb)
                                ),
                                child: Icon(Icons.search,color: Colors.black,),
                              ),
                              Container(
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFc9c8cb)
                                ),
                                child: Icon(Icons.message,color: Colors.black,),
                              ),

                            ],
                          ),
                        )

                      ],
                    ),
                  ),

                  SizedBox(height: 10.0,),

                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[

                        Container(
                          height: 60.0,
                          width: 60.0,
                          child: ClipOval(
                              child: Image.network(pic1,
                              fit: BoxFit.cover,
                              )
                          ),
                        ),
                        SizedBox(width: 9.0,),

                        Container(
                          child: Text("What's on your mind",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black
                          ),
                          ),
                        )

                      ],
                    ),
                  ),
                  Divider(height: 6.0,color: Colors.black,),

                  Container(
                    margin: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween
                        ,
                      children: <Widget>[

                        //first container start
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.video_call,color: Colors.pink,),
                              Text('Live',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.black
                              ),
                              )
                            ],
                          ),
                        ),
                        //end of first container

                        Container(
                          height: 30.0,
                          width: 0.5,
                          color: Colors.black,
                        ),

                        //second container start
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.photo,color: Colors.green,),
                              Text('Photo',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black
                                ),
                              )
                            ],
                          ),
                        ),
                        //end of second container

                        Container(
                          height: 30.0,
                          width: 0.5,
                          color: Colors.black,
                        ),
                        //third container start
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.add_location,color: Colors.pink,),
                              Text('Check In',
                                style: TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.black
                                ),
                              )
                            ],
                          ),
                        ),
                        //end of third container



                      ],
                    ),
                  ),

                ],
              ),
            ),

            //end first container

            //start second container

            Container(
              margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
              height: 150.0,
              color: Color(0xFFffffff),
            ),

            //end second container





          ],
        ),

      ),
    );
  }
}

