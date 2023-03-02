import 'package:flutter/material.dart';
import 'package:ternak_insang/pages/homePage.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex:5,
                child:Container(
                  width: double.infinity,
                  
                  child: Column(
                    children: [
                      SizedBox(height: 110.0,),
                      CircleAvatar(
                        radius: 65.0,
                        backgroundImage: AssetImage('images/ammar.jpg'),
                        backgroundColor: Color.fromARGB(255, 59, 59, 59),
                      ),
                      SizedBox(height: 10.0,),
                      Text('Ammar Qorni',
                      style: TextStyle(
                        color:Color.fromARGB(255, 255, 50, 50),
                        fontSize: 20.0,
                      )),
                  ]
                  ),
                ),
              ),

              Expanded(
                flex:5,
                child: Container(
                  color: biru,
                  child: Center(
                      child:Card(
                        margin: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                        child: Container(
                          width: 310.0,
                          height:290.0,
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Information",
                                style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w800,
                                ),),
                                Divider(color: Colors.grey[300],),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.home,
                                      color: Colors.blueAccent[400],
                                      size: 35,
                                    ),
                                    SizedBox(width: 20.0,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Guild",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                          ),),
                                        Text("FairyTail, Magnolia",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey[400],
                                          ),)
                                      ],
                                    )

                                  ],
                                ),
                                SizedBox(height: 20.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.auto_awesome,
                                      color: Colors.yellowAccent[400],
                                      size: 35,
                                    ),
                                    SizedBox(width: 20.0,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Magic",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                          ),),
                                        Text("Spatial & Sword Magic, Telekinesis",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey[400],
                                          ),)
                                      ],
                                    )

                                  ],
                                ),
                                SizedBox(height: 20.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.favorite,
                                      color: Colors.pinkAccent[400],
                                      size: 35,
                                    ),
                                    SizedBox(width: 20.0,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Loves",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                          ),),
                                        Text("Eating cakes",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey[400],
                                          ),)
                                      ],
                                    )

                                  ],
                                ),
                                SizedBox(height: 20.0,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.people,
                                      color: Colors.lightGreen[400],
                                      size: 35,
                                    ),
                                    SizedBox(width: 20.0,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Team",
                                          style: TextStyle(
                                            fontSize: 15.0,
                                          ),),
                                        Text("Team Natsu",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey[400],
                                          ),)
                                      ],
                                    )

                                  ],
                                ),
                              ],
                            ),
                          )
                        )
                      )
                    ),
                  ),
              ),

            ],
          ),
          Positioned(
              top:MediaQuery.of(context).size.height*0.45,
              left: 20.0,
              right: 20.0,
              child: Card(
                child: Padding(
                  padding:EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child:Column(
                          children: [
                            Text('Battles',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14.0
                            ),),
                            SizedBox(height: 5.0,),
                            Text('counter',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),)
                          ],
                        )
                      ),

                      Container(
                        child: Column(
                        children: [
                          Text('Birthday',
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 14.0
                            ),),
                          SizedBox(height: 5.0,),
                          Text('April 7th',
                            style: TextStyle(
                              fontSize: 15.0,
                            ),)
                        ]),
                      ),

                      Container(
                          child:Column(
                            children: [
                              Text('Age',
                                style: TextStyle(
                                    color: Colors.grey[400],
                                    fontSize: 14.0
                                ),),
                              SizedBox(height: 5.0,),
                              Text('19 yrs',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),)
                            ],
                          )
                      ),
                    ],
                  ),
                )
              )
          )
        ],
      )
    );
  }
}