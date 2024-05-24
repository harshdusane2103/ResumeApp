import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
TextEditingController txtskill = TextEditingController();
class skillScreen extends StatefulWidget {
  const skillScreen({super.key});

  @override
  State<skillScreen> createState() => _skillScreenState();
}

class _skillScreenState extends State<skillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0Xff864AF9),
        leading: InkWell(onTap:() {
          Navigator.of(context).pop('/det');
        },child: Icon(Icons.arrow_back,color: Colors.white,)),
        centerTitle: true,
        title:Text(' Skill',style:TextStyle(color: Colors.white),),
        actions: [


          InkWell(
            onTap: () {
              TextEditingController txtskill = TextEditingController();
              setState(() {
                skill=txtskill.text;
                Navigator.of(context).pushNamed('/prview');
              });

            },
              child: Icon(Icons.check,color: Colors.white,))

        ],

      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              ... List.generate(skControllerList.length, (index) =>
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
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                              border: Border.all(color: Colors.black,width: 1),
                            ),
                            child:    Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                Text('Skill ',style: TextStyle(color: Colors.white,fontSize: 20),),
                                // Text('${count}',style: TextStyle(color: Colors.white,fontSize: 20),),
                                InkWell(onTap: () {
                                  setState(() {
                                    skControllerList.removeAt(index-1);

                                  });
                                },
                                    child: Icon(Icons.delete,color: Colors.white,))
                              ],
                            )
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            minLines: 1,
                            maxLines: 5,


                            controller: skControllerList[index].skill!,

                            decoration: InputDecoration(

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1, color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 2, color: Colors.purple),
                              ),
                              label: Text('skill'),

                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ),SizedBox(height: 5,),


            ],


          ),
        ),

      ),
      floatingActionButton: InkWell(
        onTap: () {


          TextEditingController txtskill =
          TextEditingController();
          setState(() {
            skControllerList.add(controllerModal(skill: txtskill));


          });
        },
        child: Container(
          height:40,
          width: 60,
          decoration: BoxDecoration(
            color: Color(0Xff864AF9),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisSize:MainAxisSize.min,children: [
            Icon(Icons.add,color: Colors.white,),
            Text('ADD',style: TextStyle(color: Colors.white),)
          ],
          ),

        ),
      ),


    );
  }
}

int count=1;

String? skill='';

class controllerModal {
  TextEditingController? skill;


  controllerModal({this.skill});
}

List<controllerModal> skControllerList = [
  controllerModal(
      skill: txtskill)

];