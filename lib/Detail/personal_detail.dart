import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
GlobalKey<FormState>formkey=GlobalKey();
ImagePicker imagePicker=ImagePicker();
File? fileImage;

TextEditingController txtaddress = TextEditingController();
TextEditingController txtweb = TextEditingController();
TextEditingController txtlinkdin = TextEditingController();
TextEditingController txtname = TextEditingController();
TextEditingController txtemail = TextEditingController();
TextEditingController txtdob = TextEditingController();
TextEditingController txtnumber = TextEditingController();
class PersonalScreen extends StatefulWidget {
  const PersonalScreen({super.key});

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0Xff864AF9),
        leading: InkWell(onTap:() {
          Navigator.of(context).pop('/det');
        },child: Icon(Icons.arrow_back,color: Colors.white,)),
        centerTitle: true,
        title:Text(' Personal Detail',style:TextStyle(color: Colors.white),),
        actions: [
          InkWell(
              onTap:() {
           setState(() {
Navigator.of(context).pushNamed('/prview');
           });
          },child: Icon(Icons.check,color: Colors.white,))
        ],
      ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Center(
                    child: Stack(
                      children: [
                        SizedBox(width: 80,),
                        CircleAvatar(

                          radius: 50,

                          backgroundColor:   Color(0Xff864AF9),
                          backgroundImage:(fileImage!=null)? FileImage(fileImage!):null,

                        ),

                        Positioned(
                          left: 70,
                          bottom: 1,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.green
                            ),
                            child: IconButton(
                              onPressed: ()  async {
                                XFile? xfileimage= await imagePicker.pickImage(source: ImageSource.gallery);
                                setState(() {
                                  fileImage=File(xfileimage!.path);
                                });

                              }, icon: Icon(Icons.photo_rounded,size:15,),color: Colors.white,),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: txtname,
                    decoration: InputDecoration(

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 2, color: Colors.purple),
                      ),
                      label: Text('Name'),

                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    minLines: 1,
                    maxLines: 40,
                    controller: txtaddress,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 2, color: Colors.purple),
                      ),
                      label: Text('Address (optional)'),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: txtemail,

                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 2, color: Colors.purple),
                      ),
                      label: Text(' Email'),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: txtdob,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 2, color: Colors.purple),
                      ),
                      label: Text(' DOB'),
                      hintText: 'DD/MM/YYYY',
                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(
                    controller: txtnumber,
                    keyboardType: TextInputType.number,

                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 2, color: Colors.purple),
                      ),
                      label: Text('Phone NO.'),
                    ),
                  ),

                  SizedBox(height: 10,),
                  TextField(

                    controller: txtweb,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 2, color: Colors.purple),
                      ),

                      label: Text('Job Satus'),

                    ),
                  ),
                  SizedBox(height: 10,),
                  TextField(

                    controller: txtlinkdin,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 1, color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(width: 2, color: Colors.purple),
                      ),
                      label: Text('Linkdin (optional)'),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Gender',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Radio(

                          value: 'male', groupValue: gender, onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      }),
                      Text('Male'),
                      Radio(

                          value: 'female', groupValue: gender, onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      }),
                      Text('Female'),
                      Radio(

                        value: 'others', groupValue: gender, onChanged: (value) {
                        setState(() {
                          gender = value!;
                        });
                      },),
                      Text('Others'),
                    ],
                  ),



                ],
              ),
            ),
          ),
        ),

     floatingActionButton: InkWell(
       onTap: () {
         address = txtaddress.text;
         number = txtnumber.text;
         name = txtname.text;
         dob =txtdob.text;
         web=txtweb.text;
         linkdin=txtlinkdin.text;
         email=txtemail.text;

   Navigator.of(context).pushNamed('/prview');

       },
       child: Container(
         height:40,
         width: 60,
         decoration: BoxDecoration(
           color: Color(0Xff864AF9),
               borderRadius: BorderRadius.circular(10),
         ),
         child: Center(child: Text('View CV',style: TextStyle(color: Colors.white),)),
       ),
     ),
    );
  }
}
String gender = 'male';
List varList = [false,false,false,false];
List skillList = ['C Language','CPP Language','Dart','Flutter'];
String skill = "";
String? name = '';
String? address='';
String? web='';
String? linkdin='';
String? email='';
String? dob='';
String? number='';



