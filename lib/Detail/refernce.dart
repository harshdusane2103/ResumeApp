import 'package:flutter/material.dart';
import 'package:resume_app_ui/Detail/Expersion.dart';
TextEditingController txtRename = TextEditingController();
TextEditingController txtRejob = TextEditingController();
TextEditingController txtRecom = TextEditingController();
TextEditingController txtReemail = TextEditingController();
TextEditingController txtRephone = TextEditingController();

class rescreen extends StatefulWidget {
  const rescreen({super.key});

  @override
  State<rescreen> createState() => _rescreenState();
}

class _rescreenState extends State<rescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0Xff864AF9),
        leading: InkWell(onTap:() {
          Navigator.of(context).pop('/det');
        },child: Icon(Icons.arrow_back,color: Colors.white,)),
        centerTitle: true,
        title:Text(' Reference',style:TextStyle(color: Colors.white),),
        actions: [

          InkWell(
              onTap:() {
                TextEditingController txtRename = TextEditingController();
                TextEditingController txtRejob = TextEditingController();
                TextEditingController txtRecom = TextEditingController();
                TextEditingController txtReemail = TextEditingController();
                TextEditingController txtRephine = TextEditingController();
                setState(() {
                  Rename=txtRename.text;
                  Recom=txtRecom.text;
                  Rejobtitle=txtRejob.text;
                  Reemail=txtReemail.text;
                  Rephone=txtRephone.text;
                  Navigator.of(context).pushNamed('/prview');
                });
              },child: Icon(Icons.check,color: Colors.white,))

        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [

              ... List.generate(ReControllerList.length, (index) =>

                  Container(
                    height: 500,
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
                                Text('Reference',style: TextStyle(color: Colors.white,fontSize: 20),),
                                InkWell(onTap: () {
                                  setState(() {
                                    ReControllerList.removeAt(index-1);
                                  });
                                },
                                    child: Icon(Icons.delete,color: Colors.white,))
                              ],
                            )
                        ),
                        SizedBox(height: 10,),


                        refarancebox('Reference Name ',ReControllerList[index].Rename!),
                        refarancebox('Job Title ',ReControllerList[index].Rejob!),
                        refarancebox('Company Name ',ReControllerList[index].Recom!),
                        refarancebox('Email Name ',ReControllerList[index].Reemail!),
                        refarancebox('Phone ',ReControllerList[index].Rephone!),


                      ],
                    ),
                  ),
              ),

            ],


          ),
        ),

      ),
      floatingActionButton: InkWell(
        onTap: () {

          TextEditingController txtRename = TextEditingController();
          TextEditingController txtRejob = TextEditingController();
          TextEditingController txtRecom = TextEditingController();
          TextEditingController txtReemail = TextEditingController();
          TextEditingController txtRephone = TextEditingController();

          setState(() {
            ReControllerList.add(controllerModal(Recom: txtRecom,Reemail:txtReemail,Rejob:txtRejob,Rename: txtRename,Rephone: txtRephone));

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


  Padding refarancebox(String label, TextEditingController Controller) {
    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: Controller,
                          decoration: InputDecoration(

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(width: 1, color: Colors.black),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide(width: 2, color: Colors.purple),
                            ),
                            label: Text(label),

                          ),
                        ),
                      );
  }
}
String? Rename='';
String? Rejobtitle='';
String? Reemail='';
String? Rephone='';
String? Recom='';

TextEditingController txtcontroller = TextEditingController();
List txtControllerList = [
  txtcontroller,
];


class controllerModal {
  TextEditingController? Rename ;
  TextEditingController? Rejob ;
  TextEditingController? Recom ;
  TextEditingController? Reemail ;
  TextEditingController? Rephone ;


  controllerModal({this.Recom,this.Reemail,this.Rejob,this.Rename,this.Rephone});
}

List<controllerModal> ReControllerList = [
  controllerModal(Recom: txtRecom,Reemail: txtReemail,Rejob: txtRejob,Rename: txtRename,Rephone: txtRephone)
];

