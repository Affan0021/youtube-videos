import 'package:flutter/material.dart';
import 'Gumaan.dart';
import 'Apocaly.dart';
import 'darkhast.dart';
import 'package:flutter/services.dart';
import 'home.dart';

void main() {
// runApp(First());

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(

    statusBarColor: Colors.transparent,

  )
  );

  runApp(MaterialApp(

    home: Welcome(),
  )
  );
}


class Welcome extends StatefulWidget {

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SingleChildScrollView(
            child: Stack(
              children: <Widget>[



                Container(
                  margin: EdgeInsets.fromLTRB(0, 0,0, 0),
                  width: 600,
                  height: 900,
                  decoration: BoxDecoration(

                    // color: const Color(0xff7c94b6),
                    image: const DecorationImage(
                      image:AssetImage('user/wel.jpg'),
                      fit: BoxFit.cover,
                    ),

                  ),
                ),
                Column(


                  children: [


                    SizedBox(height: 700),
                    Container(
                        width: 250,
                        height: 55,
                        margin: EdgeInsets.only(left: 80.0),
                        child: ElevatedButton(
                          onPressed: ()

                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => HomePage()),
                            );

                          },


                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.purple),
                              shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(
                                          color: Colors.transparent)
                                  )
                              )
                          ),

                          child: Text(
                            '\t\tPlay >>>>> ',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'OpenSans',
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                    )




                  ],

                )





              ],

            )
        )



    );
  }
}
