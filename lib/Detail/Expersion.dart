import 'package:flutter/material.dart';
TextEditingController txtcomname = TextEditingController();
TextEditingController txtjob = TextEditingController();
TextEditingController txtstartdate = TextEditingController();
TextEditingController txtenddate = TextEditingController();
TextEditingController txtdetail = TextEditingController();
class ExScreen extends StatefulWidget {
  const ExScreen({super.key});

  @override
  State<ExScreen> createState() => _ExScreenState();
}

class _ExScreenState extends State<ExScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0Xff864AF9),
        leading: InkWell(onTap:() {
          Navigator.of(context).pop('/det');
        },child: Icon(Icons.arrow_back,color: Colors.white,)),
        centerTitle: true,
        title:Text(' Experince',style:TextStyle(color: Colors.white),),
        actions: [


          InkWell(onTap:() {
            TextEditingController txtcomname = TextEditingController();
            TextEditingController txtjob = TextEditingController();
            TextEditingController txtstartdate = TextEditingController();
            TextEditingController txtenddate = TextEditingController();
            TextEditingController txtdetail = TextEditingController();
            setState(() {
              comname=txtcomname.text;
              jobtitle=txtjob.text;
              startdate=txtstartdate.text;
              enddate=txtenddate.text;
              details=txtdetail.text;
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

              ... List.generate(ExControllerList.length, (index) =>
                  Container(
                    height: 480,

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

                                Text('  Experince',style: TextStyle(color: Colors.white,fontSize: 20),),
                                InkWell(onTap: () {
                                  setState(() {
                                    ExControllerList.removeAt(index-1);

                                  });
                                },
                                    child: Icon(Icons.delete,color: Colors.white,))
                              ],
                            )
                        ),
                        SizedBox(height: 10,),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: txtcomname,
                            decoration: InputDecoration(

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1, color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 2, color: Colors.purple),
                              ),
                              label: Text('Company Name'),

                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(

                          padding: const EdgeInsets.all(8.0),
                          child: TextField(

                            controller: txtjob,
                            decoration: InputDecoration(

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1, color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 2, color: Colors.purple),
                              ),
                              label: Text('Job Title'),

                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(

                            controller: txtstartdate,

                            decoration: InputDecoration(


                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1, color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 2, color: Colors.purple),
                              ),
                              label: Text('Start Date'),


                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: txtenddate,
                            decoration: InputDecoration(

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1, color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 2, color: Colors.purple),
                              ),
                              label: Text('End Date'),

                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            minLines: 1,
                            maxLines: 5,

                            controller: txtdetail,
                            decoration: InputDecoration(

                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 1, color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(width: 2, color: Colors.purple),
                              ),
                              label: Text('Details'),

                            ),
                          ),
                        ),

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


          TextEditingController txtcomname = TextEditingController();
          TextEditingController txtjob = TextEditingController();
          TextEditingController txtstartdate = TextEditingController();
          TextEditingController txtenddate = TextEditingController();
          TextEditingController txtdetail = TextEditingController();
          setState(() {
            ExControllerList.add(controllerModal(detail: txtdetail,job: txtjob,startdate: txtstartdate,enddate:txtenddate,comname: txtcomname ));

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

expresionbox(String label, TextEditingController Controller) {
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

String? comname='';
String? jobtitle='';
String? startdate='';
String? enddate='';
String? details='';
TextEditingController txtcontroller = TextEditingController();

class controllerModal
{

  TextEditingController? comname ;
  TextEditingController? job ;
  TextEditingController? startdate ;
  TextEditingController? enddate ;
  TextEditingController? detail ;
  controllerModal({this.comname,this.detail,this.enddate,this.startdate,this.job});

}
List<controllerModal>ExControllerList=[
  controllerModal(comname: txtcomname,enddate:txtenddate,startdate: txtstartdate,detail: txtdetail,job: txtjob)
];