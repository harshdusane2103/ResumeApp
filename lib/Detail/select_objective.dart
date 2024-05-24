import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume_app_ui/utils/list.dart';

class selectScreen extends StatefulWidget {
  const selectScreen({super.key});

  @override
  State<selectScreen> createState() => _selectScreenState();
}

class _selectScreenState extends State<selectScreen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0Xff864AF9),
        leading: InkWell(onTap:() {
          Navigator.of(context).pop('/det');
        },child: Icon(Icons.arrow_back,color: Colors.white,)),
        centerTitle: true,
        title:Text(' select Object',style:TextStyle(color: Colors.white),),
        actions: [
          Icon(Icons.check,color: Colors.white,)
        ],
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ... List.generate(objectivelist.length, (index) =>
                    Container(


                      width: 380,
                      decoration: BoxDecoration(
                        color: Colors.white,

                        borderRadius: BorderRadius.circular(10),
                        // border: Border.all(color: Colors.black,width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [

                            InkWell(
                              onTap: () {
                                setState(() {
                                  selectedbox=index;
                                  txtobj = TextEditingController(
                                    text: '${objectivelist[selectedbox]}'
                                  );
                                });
                              },
                              child: Container(
                                  height: 200,
                                  width: 380,
                                  decoration: BoxDecoration(

                                    color: Colors.white,

                                    border: Border.all(color: Colors.black,width: 1),
                                  ),
                                  child:    Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SelectableText(objectivelist[index]['name'],style: TextStyle(color: Colors.black,fontSize:12),),
                                        // Text('${count}',style: TextStyle(color: Colors.white,fontSize: 20),),

                                      ],

                                    ),
                                  )
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                ),


              ],


            ),
          ),
        ),

      ),
    );

  }
}
int selectedbox=0;
TextEditingController txtobj = TextEditingController();
