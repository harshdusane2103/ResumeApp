import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


TextEditingController txtproject = TextEditingController();

class projectscreen extends StatefulWidget {
  const projectscreen({super.key});

  @override
  State<projectscreen> createState() => _projectscreenState();
}

class _projectscreenState extends State<projectscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0Xff864AF9),
        leading: InkWell(onTap: () {
          Navigator.of(context).pop('/det');
        }, child: Icon(Icons.arrow_back, color: Colors.white,)),
        centerTitle: true,
        title: Text('Projects', style: TextStyle(color: Colors.white),),
        actions: [
          InkWell(onTap:
      () {
        TextEditingController txtproject = TextEditingController();
        setState(() {
          project=txtproject.text;
          Navigator.of(context).pushNamed('/prview');

        });

      },child: Icon(Icons.check, color: Colors.white,))
        ],),


      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              ... List.generate(procontrollerlist.length, (index) =>
                  Container(

                    height: 120,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.white,

                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(color: Colors.black,width: 1),
                    ),
                    child: Column(
                      children: [

                        Container(
                            height: 30,
                            width: 380,
                            decoration: BoxDecoration(

                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              border: Border.all(color: Colors.black, width: 1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Project ', style: TextStyle(
                                    color: Colors.white, fontSize: 20),),
                                // Text('${count}',style: TextStyle(color: Colors.white,fontSize: 20),),
                                InkWell(onTap: () {
                                  setState(() {
                                    procontrollerlist.removeAt(index - 1);
                                  });
                                },
                                    child: Icon(
                                      Icons.delete, color: Colors.white,))
                              ],
                            )
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            minLines: 1,
                            maxLines: 5,

                            controller:procontrollerlist[index].project,
                            decoration: InputDecoration(

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                    width: 1, color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                    width: 2, color: Colors.purple),
                              ),
                              label: Text('Projects'),

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ), SizedBox(height: 5,),

              Align(
                alignment: Alignment.centerRight,
                child: FloatingActionButton(

                  onPressed: () {
                    TextEditingController txtproject = TextEditingController();

                    setState(() {
                      procontrollerlist.add(controllerModal(project: txtproject));
                    });
                  }, child: Row(
                  mainAxisSize: MainAxisSize.min, children: [
                  Icon(Icons.add, color: Colors.white,),
                  Text('ADD', style: TextStyle(color: Colors.white),)
                ],
                ), backgroundColor: Color(0Xff864AF9),

                ),

              )
            ],


          ),
        ),

      ),


    );
  }
}




  String? project='';
  class controllerModal
  {
    TextEditingController? project;
    controllerModal({this.project});
  }

  List procontrollerlist=[controllerModal(project: txtproject)];

