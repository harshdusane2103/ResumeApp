import 'package:flutter/material.dart';

import 'package:resume_app_ui/Detail/Education.dart';
TextEditingController txtobjective = TextEditingController();

class obScreen extends StatefulWidget {
  const obScreen({super.key});

  @override
  State<obScreen> createState() => _obScreenState();
}

class _obScreenState extends State<obScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0Xff864AF9),
        leading: InkWell(onTap:() {
          Navigator.of(context).pop('/det');
        },child: Icon(Icons.arrow_back,color: Colors.white,)),
        centerTitle: true,
        title:Text(' Objecative',style:TextStyle(color: Colors.white),),
        actions: [
          InkWell(onTap:() {
            objective=txtobjective.text;

            Navigator.of(context).pushNamed('/prview');

          },child: Icon(Icons.check,color: Colors.white,))
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ... List.generate(ControllerList.length, (index) =>
                  Container(


                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(color: Colors.black,width: 1),
                    ),
                    child: Column(
                      children: [



                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            minLines: 1,
                            maxLines: 6,

                            controller:txtobjective,
                            decoration: InputDecoration(

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1, color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 2, color: Colors.purple),
                              ),
                              label: Text('Objective '),


                            ),
                            keyboardType: TextInputType.text,
                          ),
                        ),
                      ],
                    ),
                  ),
              ),SizedBox(height: 500,),


            ],


          ),
        ),

      ),
      floatingActionButton:   InkWell(
        onTap: () {
          TextEditingController txtcontroller = TextEditingController();

          Navigator.of(context).pushNamed('/select');
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 40,
            width: 150,
            decoration: BoxDecoration(
                color: Color(0Xff864AF9),
                borderRadius: BorderRadius.circular(20)
            ),

            child: Row(
              mainAxisSize:MainAxisSize.min,children: [
              Icon(Icons.flag,color: Colors.white,),
              Text('Select Objective',style: TextStyle(color: Colors.white),)
            ],
            ),

          ),
        ),
      ),
    );

  }
}
String? objective='';
