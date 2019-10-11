import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
                child: Container(
                  height: _height / 2.5,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios, size: 25, color: Colors.black,),
                    Text(
                      'Playlist',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                    Icon(Icons.search, size: 30, color: Colors.black,),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: _height / 8, left: 35, right: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 130,
                      width: 130,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Image.asset('assets/images/music.jpg'),
                        elevation: 10,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10),),
                    Column(
                      children: <Widget>[
                        Container(
                          width: _width / 2.1,
                          child: Text(
                              'Ni***lude',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          width: _width / 2.1,
                          child: Text(
                            'Add-2',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10),
                          width: _width / 2.1,
                          child: Text(
                            '4:20',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,),
                          width: _width / 2.1,
                          child: LinearPercentIndicator(
                            width: _width / 2.1,
                            lineHeight: 9.0,
                            percent: 0.5,
                            progressColor: Colors.black,
                          )
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: _height / 3),
                  height: _height / 12,
                  width: _width /1.5,

                  child: Card(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(left: 10),),
                        Icon(Icons.play_arrow, size: 30, color: Colors.white,),
                        Text(
                          '|',
                        style: TextStyle(
                          color: Colors.white
                        ),),
                        Icon(Icons.pause, size: 30, color: Colors.white,),
                        Text(
                          '|',
                          style: TextStyle(
                              color: Colors.white
                          ),),
                        Icon(Icons.favorite_border, size: 30, color: Colors.white,),
                        Text(
                          '|',
                          style: TextStyle(
                              color: Colors.white
                          ),),
                        Icon(Icons.shuffle, size: 30, color: Colors.white,),
                        Padding(padding: EdgeInsets.only(right: 10),),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 40, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Top Tracks',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w500
                  ),
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'More',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10),),
                    Icon(Icons.arrow_forward_ios, size: 25, color: Colors.white,)
                  ],
                )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              margin: EdgeInsets.only(top: 30, right: 30, left: 30),
              child: Row(
                children: <Widget>[
                  OutlineButton(
                    onPressed: () => debugPrint('Pressed'),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      'Accoustic',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10),),
                  OutlineButton(
                    onPressed: () => debugPrint('Pressed'),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      'Jazz',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10),),
                  OutlineButton(
                    onPressed: () => debugPrint('Pressed'),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      'Pop',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10),),
                  OutlineButton(
                    onPressed: () => debugPrint('Pressed'),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      'Blues',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10),),
                  OutlineButton(
                    onPressed: () => debugPrint('Pressed'),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      'Hip Hop',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, left: 30, right: 30,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: 80,
                      width: 80,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Image.asset('assets/images/music.jpg'),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10),),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Ni***lude',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                        Text(
                          'Add-2',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,

                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                        '4:43',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                    ),
                    ),
                    Padding(padding: EdgeInsets.only(left: 10),),
                    Icon(Icons.favorite, color: Colors.white, size: 40,)
                  ],
                ),
              ],
            )
          ),
          Container(
              margin: EdgeInsets.only(top: 30, left: 30, right: 30,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset('assets/images/m1.jpg'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'You are God',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            'Gracey',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,

                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '3:35',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      Icon(Icons.favorite_border, color: Colors.white, size: 40,)
                    ],
                  ),
                ],
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 30, left: 30, right: 30,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset('assets/images/m2.jpg'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'The Roots',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            'The Roots',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,

                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '4:21',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      Icon(Icons.favorite, color: Colors.white, size: 40,)
                    ],
                  ),
                ],
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 30, left: 30, right: 30,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset('assets/images/m3.jpg'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Armor',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            'Tony Mottola',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,

                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '3:33',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      Icon(Icons.favorite_border, color: Colors.white, size: 40,)
                    ],
                  ),
                ],
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 30, left: 30, right: 30,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset('assets/images/m4.jpg'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Supraphon',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            'Supraphon',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,

                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '1:53',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      Icon(Icons.favorite_border, color: Colors.white, size: 40,)
                    ],
                  ),
                ],
              )
          ),
          Container(
              margin: EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 80,
                        width: 80,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Image.asset('assets/images/m5.jpg'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Chapters',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w500
                            ),
                          ),
                          Text(
                            'Yuna',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,

                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '6:13',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(left: 10),),
                      Icon(Icons.favorite, color: Colors.white, size: 40,)
                    ],
                  ),
                ],
              )
          ),
        ],
      ),
    );
  }
}
