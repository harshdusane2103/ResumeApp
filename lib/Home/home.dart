

import 'package:flutter/services.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0Xff864AF9),
          centerTitle: true,
          title: Text(
            'Resume Bulider',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        body: Stack(
          children: [
            Center(
              child: Container(
                height: 400,
                width: 380,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('asstes/images/banner1.png'),
                    )),
              ),
            ),

          ],
        ),
        bottomNavigationBar: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 90,
              decoration: BoxDecoration(
                  color: Color(0Xff864AF9),
                  border: Border.all(color:Color(0Xff864AF9),width: 5 )
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed('/pdf');
                      });
                    },
                    child: Icon(
                      Icons.file_download_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom:40,),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  color: Color(0Xff864AF9),
                  // color: Color(0Xff864AF9),
                  shape: BoxShape.circle),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/det');
                  },
                  child: Icon(Icons.add,color: Colors.white,size: 28,)),
            ),

          ],
        ),

    floatingActionButton: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed('/prview');
          },
    child: Container(
    height:40,
    width: 60,
    decoration: BoxDecoration(
    color: Color(0Xff864AF9),
    borderRadius: BorderRadius.circular(10),
    ),
    child: Center(child: Text('Prview',style: TextStyle(color: Colors.white),)),
    ),
    ),


    );
  }
}
