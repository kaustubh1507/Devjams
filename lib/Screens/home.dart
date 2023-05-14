import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:sponsorship_broker/Screens/signin.dart';
import 'package:sponsorship_broker/backend/add_sponsor.dart';
import 'package:sponsorship_broker/backend/display_sponsors.dart';
import 'package:sponsorship_broker/reusable_widgets/reusable_widget.dart';
import 'package:sponsorship_broker/utils/color_utils.dart';
import 'package:sponsorship_broker/reusable_widgets/navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SPO - BRO"),
        backgroundColor: Colors.purple,
      ),
      drawer: const NavBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
              20, 40, 20, 0
            ),
            child: Column(
              children: <Widget>[
                slide(context),
                //logoWidget("assets/images/logo1.png"),
                Image.asset(
                  "assets/images/logo1.png",
                  fit: BoxFit.fitWidth,
                  width: 240,
                  height: 75,
                
  //  color: Colors.white,
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Text("SPOBRO is a Web Service and a Mobile Application that aims towards minimizing sponsoring event tasks. The main motto of our website is to create an ecosystem between Sponsors and Society and reduce the Sponsorship hassle. This can be achieved with the help of Sponsoring Firms and various other organizations. \n\nOn SPO-BRO we hope you get the best event Sponsor.",
                    style: TextStyle(color:Colors.black, fontWeight: FontWeight.w900,fontSize: 18),
                    textAlign: TextAlign.center,
                  )
                ),
                
              ],
            ),
          ) 
        ),
      ),
    );
  }
}