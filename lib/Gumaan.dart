
import 'dart:async';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/material.dart';




class  Gumaan extends StatefulWidget {

  @override
  GumaanState createState() => GumaanState();
}

class GumaanState extends State< Gumaan> {


  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'jIQ0Dx-4peE',
      flags: YoutubePlayerFlags(
        autoPlay : true,
        mute: false,

      )

  );


  Widget build(BuildContext context)
  {

    var query = MediaQuery.of(context);
    var height = query.size.height;
    var container = height;

    return Scaffold(

        body: SingleChildScrollView(
            child: Stack(
              //      Column(
                children: [




                  YoutubePlayer(

                    controller: _controller,
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: Colors.blueAccent,
                    aspectRatio: 16/9,

                  ),

                  Container(
                    //alignment: Alignment.center,
                    margin:  const EdgeInsets.fromLTRB(0, 220, 0, 10),

                    width: 555.0,
                    height: 565.0,
                    decoration:   BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.transparent,
                            offset: const Offset(
                              100.0,
                              10.0,
                            ), //Offset
                            blurRadius: 4.0,
                            spreadRadius: 0.11,
                          ), //BoxShadow
                          BoxShadow(
                            color: Colors.black87,
                            offset: const Offset(0.0, 0.0),
                            blurRadius: 0.0,
                            spreadRadius: 0.0,
                          ),
                          //BoxShadow
                        ],
                        border: Border.all(
                          color: Colors.transparent,
                          width: 0,
                        ),
                        borderRadius:  const BorderRadius.all(Radius.circular(0))
                    ),
                  ),


                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 230, 20, 20),
                    child:  const Text(
                      'GUMAAN - Young Stunners | Talha Anjum | Talhah Yunus (official)',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 20.0,
                        //fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 283, 20, 20),
                    child:  const Text(
                      '12M views - 10 months ago',
                      style: TextStyle(
                        color: Colors.white60,
                        fontFamily: 'OpenSans',
                        fontSize: 14.0,
                        //fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),

                  Container(
                    margin:  const EdgeInsets.fromLTRB(350, 230, 0, 0),
                    child:  const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.white,
                      size: 35.0,

                    ),
                  ),


                  ListTile(
                    contentPadding:  const EdgeInsets.fromLTRB(0, 315, 280, 0),

                    title: Icon(
                      Icons.thumb_up_alt_sharp,
                      color: Colors.white60,
                      size: 30.0,
                    ),
                    subtitle:   Column(
                        children:   [
                          SizedBox(
                            height: 5,
                          ),

                          const Text('Like',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans',
                              fontSize: 16.0,
                              //fontWeight: FontWeight.w200,
                            ),

                          ),
                        ]
                    ),

                  ),


                  ListTile(
                    contentPadding:  const EdgeInsets.fromLTRB(0, 315, 110, 0),

                    title: Icon(
                      Icons.thumb_down,
                      color: Colors.white60,
                      size: 30.0,
                    ),
                    subtitle:   Column(
                        children:   [
                          SizedBox(
                            height: 5,
                          ),

                          const Text('Dislike',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans',
                              fontSize: 16.0,
                              //fontWeight: FontWeight.w200,
                            ),

                          ),
                        ]
                    ),

                  ),


                  ListTile(
                    contentPadding:  const EdgeInsets.fromLTRB(50, 315, 0, 0),

                    title: Icon(
                      Icons.reply_all,
                      color: Colors.white60,
                      size: 30.0,
                    ),
                    subtitle:   Column(
                        children:   [
                          SizedBox(
                            height: 5,
                          ),

                          const Text('share',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans',
                              fontSize: 16.0,
                              //fontWeight: FontWeight.w200,
                            ),

                          ),
                        ]
                    ),

                  ),

                  ListTile(
                    contentPadding:  const EdgeInsets.fromLTRB(250, 315, 0, 0),

                    title: Icon(
                      Icons.cloud_download,
                      color: Colors.white60,
                      size: 30.0,
                    ),
                    subtitle:   Column(
                        children:   [
                          SizedBox(
                            height: 5,
                          ),

                          const Text('Download',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans',
                              fontSize: 16.0,
                              //fontWeight: FontWeight.w200,
                            ),

                          ),
                        ]
                    ),

                  ),

                  Divider(

                    height: 770,
                    color: Colors.white60,
                  ),


                  ListTile(
                    contentPadding:  const EdgeInsets.fromLTRB(10, 380, 15, 0),
                    leading:  const CircleAvatar(
                      backgroundImage: AssetImage('user/11.jpg'),
                    ),
                    title: const Text(
                      'Young Stunners',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        //fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle:   Row(
                        children:  const [
                          //Icon(Icons.call_received,color: Colors.green,),
                          const Text('97.4k Subscribers',
                            style: TextStyle(
                              color: Colors.white60,
                              fontFamily: 'OpenSans',
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                            ),

                          ),
                        ]
                    ),
                    trailing: Column(

                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),

                            child : Text('SUBSCRIBE',
                              style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'OpenSans',
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),


                            ),

                          ),

                        ]
                    ),



                  ),

                  Divider(

                    height: 900,
                    color: Colors.white60,
                  ),

                  Container(
                    margin: const EdgeInsets.fromLTRB(15, 460, 0, 0),

                    child : Text('Comments',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                      ),

                    ),

                  ),


                  Container(
                    margin: const EdgeInsets.fromLTRB(115, 462, 0, 0),

                    child : Text('35K',
                      style: TextStyle(
                        color: Colors.white60,
                        fontFamily: 'OpenSans',
                        fontSize: 17.0,
                        fontWeight: FontWeight.w700,
                      ),

                    ),

                  ),

                  ListTile(
                    contentPadding:  const EdgeInsets.fromLTRB(10, 490, 15, 0),
                    leading:  const CircleAvatar(
                      backgroundImage: AssetImage('user/11.jpg'),
                    ),
                    title: const Text(
                      'I often use their songs while doing coding and they helps me to avoid forustration....',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),


                  ),

                  Divider(

                    height: 1100,
                    color: Colors.white60,
                  ),

                  Container(
                    //alignment: Alignment.center,
                      margin:  const EdgeInsets.fromLTRB(15, 560, 0, 0),

                      width: 360.0,
                      height: 150.0,
                      decoration:   BoxDecoration(
                        //   shape: BoxShape.circle,
                        image:  const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('user/pic.png'),

                        ),


                      )

                  ),









                ]
            )
        )
    );




  }
}