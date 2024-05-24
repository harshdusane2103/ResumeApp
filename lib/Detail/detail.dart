import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class detailScreen extends StatefulWidget {
  const detailScreen({super.key});

  @override
  State<detailScreen> createState() => _detailScreenState();
}

class _detailScreenState extends State<detailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Stack(children: [
            Container(
              height: 150,
              width: 384,
              decoration: BoxDecoration(
                color: Color(0Xff864AF9),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).popAndPushNamed('/home');
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 24,
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    width: 190,
                  ),
                  Icon(
                    Icons.remove_red_eye,
                    color: Colors.white,
                    size: 18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'View CV',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )
                ],
              ),
            ),
          ]),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/personal');
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    // border: Border.all(color: Colors.black,width: 2)
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Icon(
                        Icons.person,
                        color: Colors.black,
                        size: 32,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Personal',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      Text(
                        'Details',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/ed');
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 10),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    // border: Border.all(color: Colors.black,width: 2)
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('asstes/images/hat.png'),
                            )),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Education',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/ex');
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 10),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    // border: Border.all(color: Colors.black,width: 2)
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('asstes/images/ex.png'),
                            )),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Experience',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/sk');
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 20),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    // border: Border.all(color: Colors.black,width: 2)
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('asstes/images/skill.png'),
                            )),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Skills',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/ob');
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 10),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    // border: Border.all(color: Colors.black,width: 2)
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('asstes/images/ob.jpeg'),
                            )),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Objective',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/re');
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 10),
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    // border: Border.all(color: Colors.black,width: 2)
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('asstes/images/re.jpg'),
                            )),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Reference',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20,top: 20),
            child: Text('  More Sections',style: TextStyle(color: Colors.red),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:16),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/project');
              },
              child: Container(
                margin: EdgeInsets.only(top: 20, left: 10),
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  // border: Border.all(color: Colors.black,width: 2)
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('asstes/images/pro.png'),
                          )),
                    ),
                    SizedBox(
                      height: 2,
                    ),

                    Text(
                      'Projects',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
