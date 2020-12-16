import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_medcare/HealthCard.dart';
<<<<<<< HEAD
import 'package:flutter_medcare/con_main.dart';
=======
import 'package:flutter_medcare/menuBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'wallet/walletmain.dart';
>>>>>>> 8051d3b16d30ce9e27e5a8400e0f9e64f848e026

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}

class Dashboard extends StatelessWidget {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Dashboard",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              fontSize: 40,
              color: Color(0xFF4be8ce),
            ),
          ),
          Text(
            "Medical Maintenance Made Easy",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 17.0,
              color: Color(0xFF242d68),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => HealthPage(),
                    ));
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/healthcard.png",
                          scale: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Health Card",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    height: 130.0,
                    width: 130.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26.withOpacity(0.2),
                            blurRadius: 7,
                            spreadRadius: 2,
                            offset: Offset(4, 4),
                          )
                        ]),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => MyApp(),
                    ));
                  },
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/consultancy.jpg",
                          scale: 12,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Consult Doctor",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    height: 130.0,
                    width: 130.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26.withOpacity(0.2),
                            blurRadius: 7,
                            spreadRadius: 2,
                            offset: Offset(4, 4),
                          )
                        ]),
                  ),
                ),
              ]),
              SizedBox(
                height: 30,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/wallet.png",
                          scale: 5,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Wallet",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    height: 130.0,
                    width: 130.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26.withOpacity(0.2),
                            blurRadius: 7,
                            spreadRadius: 2,
                            offset: Offset(4, 4),
                          )
                        ]),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/reminder.png",
                          scale: 15,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Reminder",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    height: 130.0,
                    width: 130.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26.withOpacity(0.3),
                            blurRadius: 7,
                            spreadRadius: 2,
                            offset: Offset(4, 4),
                          )
                        ]),
                  ),
                ),
              ]),
            ],
          ),
        ],
=======
      appBar: AppBar(
        backgroundColor: Color(0xFF4be8ce),
        elevation: 0.0,
      ),

      drawer: sideBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
              Padding(
                padding: EdgeInsets.only(top:40.0, left: 30.0, bottom: 10.0),
                child: Text("Dashboard",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Color(0xFF4be8ce),

                ),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Text("Medical Maintenance Made Easy",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                    fontSize: 17.0,
                    color: Color(0xFF242d68),
                  ),

                ),
              ),

            SizedBox(
              height: 50.0,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => HealthPage(),));
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: [
                              Image.asset("assets/healthcard.png", scale: 10,),
                              SizedBox(height: 10,),

                              Text("Health Card",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          height: 130.0,
                          width: 130.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [BoxShadow(
                              color: Colors.black26.withOpacity(0.2),
                              blurRadius: 7,
                              spreadRadius: 2,
                              offset: Offset(4, 4),
                            )]
                          ),
                        ),
                      ),

                      InkWell(
                        onTap: () {

                        },

                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: [
                              Image.asset("assets/consultancy.jpg", scale: 12,),
                              SizedBox(height: 10,),

                              Text("Consult Doctor",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          height: 130.0,
                          width: 130.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [BoxShadow(
                                color: Colors.black26.withOpacity(0.2),
                                blurRadius: 7,
                                spreadRadius: 2,
                                offset: Offset(4, 4),
                              )]
                          ),
                        ),
                      ),
                    ]
                ),

                SizedBox(
                  height: 30,
                ),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyApp(),));
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: [
                              Image.asset("assets/wallet.png", scale: 5,),
                              SizedBox(height: 10,),

                              Text("Wallet",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          height: 130.0,
                          width: 130.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [BoxShadow(
                                color: Colors.black26.withOpacity(0.2),
                                blurRadius: 7,
                                spreadRadius: 2,
                                offset: Offset(4, 4),
                              )]
                          ),
                        ),
                      ),

                      InkWell(
                        onTap: () {

                        },

                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,

                            children: [
                              Image.asset("assets/reminder.png", scale: 15,),
                              SizedBox(height: 10,),

                              Text("Reminder",
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          height: 130.0,
                          width: 130.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [BoxShadow(
                                color: Colors.black26.withOpacity(0.3),
                                blurRadius: 7,
                                spreadRadius: 2,
                                offset: Offset(4, 4),
                              )]
                          ),
                        ),
                      ),
                    ]
                ),
              ],
            ),
          ],
        ),
>>>>>>> 8051d3b16d30ce9e27e5a8400e0f9e64f848e026
      ),
    );
  }
}
