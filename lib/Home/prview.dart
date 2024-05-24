import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:resume_app_ui/Detail/Education.dart';
import 'package:resume_app_ui/Detail/Expersion.dart';
import 'package:resume_app_ui/Detail/objective.dart';
import 'package:resume_app_ui/Detail/personal_detail.dart';
import 'package:resume_app_ui/Detail/project.dart';
import 'package:resume_app_ui/Detail/refernce.dart';
import 'package:resume_app_ui/Detail/skill.dart';



class prviewScreen extends StatefulWidget {
  const prviewScreen({super.key});

  @override
  State<prviewScreen> createState() => _prviewScreenState();
}

class _prviewScreenState extends State<prviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0Xff864AF9),
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop('/home');
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        centerTitle: true,
        title: Text(
          ' Prview',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          InkWell(
              onTap: () {
                TextEditingController txtskill = TextEditingController();
                setState(() {
                  Navigator.of(context).pushNamed('/pdf');
                });
              },
              child: Icon(
                Icons.file_download_outlined,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(

        child: Container(
          height: 600,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white, width: 2)),
          child:
          Row(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                      height: 596,
                      width: 155,
                      decoration: BoxDecoration(color: Color(0Xff01204E)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Container(
                                height: 100,
                                width: 100,
                                decoration: BoxDecoration(
                                    image: (fileImage != null)
                                        ? DecorationImage(
                                        fit: BoxFit.cover,
                                        image: FileImage(fileImage!))
                                        : DecorationImage(
                                        image: AssetImage(
                                            '')),
                                    shape: BoxShape.circle,
                                    color: Colors.purple),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: 30,
                              width: 155,
                              // decoration: pw.BoxDecoration(color: PdfColors.orange),
                              alignment: Alignment.center,
                              child: Text(
                                'Informartion',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Gender',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                    TextSpan(
                                      text: ' : ${gender}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Birth:    ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '  ${dob}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height:5),

                            Container(
                              height: 30,
                              width: 155,
                              // decoration: pw.BoxDecoration(color: PdfColors.orange),
                              alignment: Alignment.center,
                              child: Text(
                                'Contact',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Text(
                                      'Phone : ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      ' ${number}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    )
                                  ]),
                                  Row(children: [
                                    Text(
                                      'Email : ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      ' ${email}',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                      ),
                                    )
                                  ]),
                                  Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          ' Address:',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                        Text(
                                          ' ${address}',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        )
                                      ])
                                ]),
                            SizedBox(height: 5),
                            Text(
                              'Education:',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:16,
                              ),
                            ),
                            SizedBox(height: 5),
                            Column(
                              children: List.generate(
                                  ControllerList.length,
                                      (index) => Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5),
                                        Text(
                                            'School/University:${ControllerList[index].school!.text}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white)),
                                        Text(
                                            'Course:${ControllerList[index].course!.text}',
                                            style: TextStyle(

                                                color: Colors.white)),
                                        Text(
                                            'Grade:${ControllerList[index].grade!.text}',
                                            style: TextStyle(

                                                color: Colors.white)),
                                        Text(
                                            'year:${ControllerList[index].year!.text}',
                                            style: TextStyle(

                                                color: Colors.white)),
                                        SizedBox(height: 10),
                                      ])),
                            ),
                          ],
                        ),
                      ))
                ]),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 55,
                          width: 190,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('${name}',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20)),
                                Text('${web}',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14)),
                              ])),
                      SizedBox(
                        height: 2,
                      ),
                      Text('Objeactive :',
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 80,
                        width: 190,
                        child: Text('${objective}\n',
                            style: TextStyle(color: Colors.black, fontSize: 9)),
                      ),
                      Text(
                        'Experience:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                              ExControllerList.length,
                                  (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 6),
                                    Text(
                                        'Company Name:${ExControllerList[index].comname!.text}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    Text(
                                        'Job Title:${ExControllerList[index].job!.text}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    Text(
                                        'Start Date:${ExControllerList[index].startdate!.text}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    Text(
                                        'End Date :${ExControllerList[index].enddate!.text}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    Text(
                                        'Details :${ExControllerList[index].detail!.text}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                  ]))),
                      SizedBox(height: 6),
                      Text(
                        'Skill:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                              skControllerList.length,
                                  (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 2),
                                    Text(
                                        '${skControllerList[index].skill!.text}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                  ]))),
                      SizedBox(height: 6),
                      Text(
                        'Reference:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                              ReControllerList.length,
                                  (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10),
                                    Text(
                                        ' Name:${ReControllerList[index].Rename!.text}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    Text(
                                        'Job Title:${ReControllerList[index].Rejob!.text}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    Text(
                                        'Company Name:${ReControllerList[index].Recom!.text}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    Text(
                                        'Email:${ReControllerList[index].Reemail!.text}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                    Text(
                                        'Phone :${ReControllerList[index].Rephone!.text}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                  ]))),
                      SizedBox(height: 6),
                      Text(
                        'Project:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                              procontrollerlist.length,
                                  (index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 2),
                                    Text(
                                        '${procontrollerlist[index].project!.text}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black)),
                                  ]))),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
