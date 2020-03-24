import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}
class _HomeState extends State<Home> {


  String pic1 = "https://images.pexels.com/photos/1839564/pexels-photo-1839564.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  //profile picture
  String pic2 = "https://images.pexels.com/photos/3060528/pexels-photo-3060528.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String pic3 = "https://images.pexels.com/photos/3775127/pexels-photo-3775127.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String pic4 = "https://images.pexels.com/photos/3775087/pexels-photo-3775087.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String pic5 = "https://images.pexels.com/photos/3775060/pexels-photo-3775060.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String pic6 = "https://images.pexels.com/photos/3775085/pexels-photo-3775085.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";

  //story img,
  String img1 = "https://images.pexels.com/photos/3773425/pexels-photo-3773425.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String img2 = "https://images.pexels.com/photos/3774093/pexels-photo-3774093.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  String img3 = "https://images.pexels.com/photos/3831867/pexels-photo-3831867.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  String img4 = "https://images.pexels.com/photos/3645370/pexels-photo-3645370.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
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
                                child: Icon(Icons.search, color: Colors.black,),
                              ),
                              Container(
                                padding: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFc9c8cb)
                                ),
                                child: Icon(
                                  Icons.message, color: Colors.black,),
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

                  Divider(height: 6.0, color: Colors.black,),

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
                              Icon(Icons.video_call, color: Colors.pink,),
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
                              Icon(Icons.photo, color: Colors.green,),
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
                              Icon(Icons.add_location, color: Colors.pink,),
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
              margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
              height: 200.0,
              color: Color(0xFFffffff),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  getStory(context, pic1, img1, "Jon Deo"),
                  getStory(context, pic2, img2, "David Jon"),
                  getStory(context, pic3, img3, "Jonson"),
                  getStory(context, pic4, img4, "Moral"),
                  getStory(context, pic5, img4, "Smith"),

                ],
              ),
            ),

            //end second container

            //start third container
            Container(
              height: MediaQuery
                  .of(context)
                  .size
                  .width,
              child: ListView(
                children: <Widget>[

                  mainPost(
                      context,
                      pic5,
                      "Jon Deo",
                      img1,
                      "56 mins",
                      Icons.person_outline,
                      "Today we went to a party"),
                  mainPost(
                      context,
                      pic4,
                      "David Jonson",
                      img2,
                      "14 mins",
                      Icons.person_outline,
                      "Today we went to a party"),
                  mainPost(
                      context,
                      pic6,
                      "Smith",
                      img4,
                      "10 mins",
                      Icons.person_outline,
                      "Today we went to a party"),


                ],
              ),
            )
            //end third container


          ],
        ),

      ),
    );
  }

  Widget getStory(BuildContext context, String profile_pic, String img,
      String name) {
    return Container(
      height: 180.0,
      width: 120.0,
      margin: EdgeInsets.all(10.0),
      child: Stack(
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  colorFilter: new ColorFilter.mode(
                      Colors.red.withOpacity(0.6), BlendMode.dstATop),
                  image: NetworkImage(img),
                  fit: BoxFit.cover,
                )
            ),
          ),



          Positioned(
            top: 10.0,
            left: 10.0,
            bottom: 15.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 50.0,
                  width: 50.0,
                  child: ClipOval(
                    child: Image.network(profile_pic,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 15.0,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(name,
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0
                      ),
                    ),
                  ),
                ),


              ],
            ),
          ),


        ],
      ),
    );
  }

  Widget mainPost(BuildContext context, String profile_pic, String name,
      String img, String time, IconData type, String des) {
    return Container(
      color: Color(0xFFffffff),
      margin: EdgeInsets.only(top: 5.0,bottom: 10.0),
      height: 450.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //start first container
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                //first container
                Container(
                  child: Row(
                    children: <Widget>[
                      //first container
                      Container(
                        margin: EdgeInsets.all(10.0),
                        height: 60.0,
                        width: 60.0,
                        child: ClipOval(
                          child: Image.network(profile_pic,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      //end first container
                      Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(name,
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    child: Text(time + "\."),
                                  ),
                                  Container(
                                    child: Icon(Icons.person_outline),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),



                    ],
                  ),
                ),
                //end first container
                //start second container
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Icon(Icons.more_horiz),
                ),

                //end second container
              ],
            ),
          ),
          //end first container
          //Start secopnd container
          Container(
            margin: EdgeInsets.only(left: 15.0),
            child: Text(des,
              maxLines: 2,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black
              ),
            ),
          ),
          //end second container
          //Start third container
          Container(
            margin: EdgeInsets.only(top: 12.0),
            child: Image.network(img,
              height: 250.0,
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          //end third container
          SizedBox(height: 15.0,),
          Divider(height: 10.0,color: Colors.black,)
        ],
      ),
    );
  }
}

