import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_app_ui/Detail/Education.dart';

import 'package:resume_app_ui/Detail/Expersion.dart';
import 'package:resume_app_ui/Detail/objective.dart';
import 'package:resume_app_ui/Detail/personal_detail.dart';
import 'package:resume_app_ui/Detail/project.dart';
import 'package:resume_app_ui/Detail/refernce.dart';
import 'package:resume_app_ui/Detail/skill.dart';

class pdfScreen extends StatefulWidget {
  const pdfScreen({super.key});

  @override
  State<pdfScreen> createState() => _pdfScreenState();
}

class _pdfScreenState extends State<pdfScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build: (format) => generatepdf(),
      ),
    );
  }
}

Future<Uint8List> generatepdf() async {
  final pdf = pw.Document();
  final image = pw.MemoryImage(fileImage!.readAsBytesSync());
  pdf.addPage(
      // pw.Padding(padding: pw.EdgeInsets.all(0)),

      pw.MultiPage(
        margin: pw.EdgeInsets.all(0),
          pageFormat: PdfPageFormat.a4,
          build: (context) {
            return [
              pw.Container(
                margin: pw.EdgeInsets.all(0),
                height: 800,
                width: double.infinity,
                decoration: pw.BoxDecoration(
                    color: PdfColors.white,
                    border: pw.Border.all(color: PdfColors.white, width: 2)),
                child: pw.Row(children: [
                  pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Container(
                          margin: pw.EdgeInsets.only(right: 10),
                            height: 680,
                            width: 155,
                            decoration: pw.BoxDecoration(
                              color: PdfColor.fromHex('01204E'),
                            ),
                            child: pw.Padding(
                              padding: const pw.EdgeInsets.only(top: 10.0),
                              child: pw.Column(
                                crossAxisAlignment: pw.CrossAxisAlignment.start,
                                children: [
                                  pw.Center(
                                    child: pw.Container(
                                      height: 100,
                                      width: 100,
                                      decoration: pw.BoxDecoration(
                                        shape: pw.BoxShape.circle,
                                        color: PdfColors.white,
                                      ),
                                      child: pw.ClipRRect(
                                          horizontalRadius: 56,
                                          verticalRadius: 56,
                                          child: pw.Image(image,
                                              fit: pw.BoxFit.cover)),
                                    ),
                                  ),
                                  pw.SizedBox(
                                    height: 15,
                                  ),
                                  pw.Container(
                                    height: 30,
                                    width: 155,
                                    // decoration: pw.BoxDecoration(color: PdfColors.orange),
                                    alignment: pw.Alignment.center,
                                    child: pw.Text(
                                      'Informartion',
                                      style: pw.TextStyle(
                                          color: PdfColors.white,
                                          fontSize: 18,
                                          fontWeight: pw.FontWeight.bold),
                                    ),
                                  ),
                                  pw.SizedBox(height: 10),
                                  pw.Padding(
                                    padding:
                                        const pw.EdgeInsets.only(left: 8.0),
                                    child: pw.RichText(
                                      text: pw.TextSpan(
                                        children: [
                                          pw.TextSpan(
                                            text: 'Gender',
                                            style: pw.TextStyle(
                                                color: PdfColors.white,
                                                fontSize: 16),
                                          ),
                                          pw.TextSpan(
                                            text: ' : ${gender}',
                                            style: pw.TextStyle(
                                                color: PdfColors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  pw.SizedBox(height: 10),
                                  pw.Padding(
                                    padding:
                                        const pw.EdgeInsets.only(left: 8.0),
                                    child: pw.RichText(
                                      text: pw.TextSpan(
                                        children: [
                                          pw.TextSpan(
                                            text: 'Birth :   ',
                                            style: pw.TextStyle(
                                                color: PdfColors.white,
                                                fontSize: 16),
                                          ),
                                          pw.TextSpan(
                                            text: ' ${dob}',
                                            style: pw.TextStyle(
                                                color: PdfColors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),

                                  pw.SizedBox(
                                    height: 2,
                                  ),
                                  pw.Container(
                                    height: 30,
                                    width: 155,
                                    // decoration: pw.BoxDecoration(color: PdfColors.orange),
                                    alignment: pw.Alignment.center,
                                    child: pw.Text(
                                      'Contact',
                                      style: pw.TextStyle(
                                          color: PdfColors.white,
                                          fontSize: 18,
                                          fontWeight: pw.FontWeight.bold),
                                    ),
                                  ),



                                  pw.Row(children: [
                                    pw.Text(
                                      'Phone : ',
                                      style: pw.TextStyle(
                                        color: PdfColors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                    pw.Text(
                                      ' ${number}',
                                      style: pw.TextStyle(
                                        color: PdfColors.white,
                                        fontSize: 12,
                                      ),
                                    )
                                  ]),
                                  pw.Row(children: [
                                    pw.Text(
                                      'Email : ',
                                      style: pw.TextStyle(
                                        color: PdfColors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                    pw.Text(
                                      ' ${email}',
                                      style: pw.TextStyle(
                                        color: PdfColors.white,
                                        fontSize: 12,
                                      ),
                                    )
                                  ]),
                                  pw.Column(
                                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                                      children: [
                                        pw.Text(
                                          ' Address:',
                                          style: pw.TextStyle(
                                            color: PdfColors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                        pw.Text(
                                          ' ${address}',
                                          style: pw.TextStyle(
                                            color: PdfColors.white,
                                            fontSize: 12,
                                          ),
                                        )
                                      ]),
                                  pw.SizedBox(height: 5),
                                  pw.Text(
                                    'Education:',
                                    style: pw.TextStyle(
                                      color: PdfColors.white,
                                      fontSize:16,
                                    ),
                                  ),
                                  pw.SizedBox(height: 5),
                                  pw.Column(
                                    children: List.generate(
                                        ControllerList.length,
                                            (index) => pw.Column(
                                            crossAxisAlignment:
                                            pw.CrossAxisAlignment.start,
                                            children: [
                                              pw.SizedBox(height: 5),
                                              pw.Text(
                                                  'School/University:${ControllerList[index].school!.text}',
                                                  style: pw.TextStyle(

                                                      color: PdfColors.white,)),
                                              pw.Text(
                                                  'Course:${ControllerList[index].course!.text}',
                                                  style: pw.TextStyle(

                                                      color: PdfColors.white,)),
                                              pw.Text(
                                                  'Grade:${ControllerList[index].grade!.text}',
                                                  style: pw.TextStyle(

                                                      color: PdfColors.white,)),
                                              pw.Text(
                                                  'year:${ControllerList[index].year!.text}',
                                                  style: pw.TextStyle(

                                                      color: PdfColors.white,)),
                                              pw.SizedBox(height: 10),
                                            ])),
                                  ),
                                ],
                              ),
                            ))
                      ]),
                  pw.SizedBox(
                    height: 10,
                  ),
                  pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [

                      pw.Container(
                        margin: pw.EdgeInsets.only(top: 5),
                        height: 60,
                        width: 300,
                        child: pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text('${name}',
                            style: pw.TextStyle(
                                color: PdfColors.black, fontSize:20)),
                            pw.Text('${web}',
                            style: pw.TextStyle(
                            color: PdfColors.black, fontSize: 16)),
                          ]
                        )
                      ),
                      pw.SizedBox(
                        height: 2,
                      ),

                      pw.Container(


                          height: 80,
                          width: 400,

                          child:pw.Column(
                              crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: [
                              pw.Text('Objeactive:',
                                  style: pw.TextStyle(
                                      color: PdfColors.black, fontSize:20)),
                              pw.Text('$objective',
                                  style: pw.TextStyle(
                                      color: PdfColors.black, fontSize:10)),
                            ]
                          )

                      ),
                      pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                        pw.Text(
                          'Experience:',
                          style: pw.TextStyle(
                            color: PdfColors.black,
                            fontSize: 20,
                          ),
                        ),
                        pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: List.generate(
                                ExControllerList.length,
                                    (index) => pw.Column(
                                    crossAxisAlignment:
                                    pw.CrossAxisAlignment.start,
                                    children: [
                                      pw.SizedBox(height: 10),
                                      pw.Text(
                                          'Company Name:${ExControllerList[index].comname!.text}',
                                          style: pw.TextStyle(
                                              fontWeight:
                                              pw.FontWeight.bold,
                                              color: PdfColors.black)),
                                      pw.Text(
                                          'Job Title:${ExControllerList[index].job!.text}',
                                          style: pw.TextStyle(
                                              fontWeight:
                                              pw.FontWeight.bold,
                                              color: PdfColors.black)),
                                      pw.Text(
                                          'Start Date:${ExControllerList[index].startdate!.text}',
                                          style: pw.TextStyle(
                                              fontWeight:
                                              pw.FontWeight.bold,
                                              color: PdfColors.black)),
                                      pw.Text(
                                          'End Date :${ExControllerList[index].enddate!.text}',
                                          style: pw.TextStyle(
                                              fontWeight:
                                              pw.FontWeight.bold,
                                              color: PdfColors.black)),
                                      pw.Text(
                                          'Details :${ExControllerList[index].detail!.text}',
                                          style: pw.TextStyle(
                                              fontWeight:
                                              pw.FontWeight.bold,
                                              color: PdfColors.black)),
                                    ]))),
                        pw.SizedBox(height: 10),
                 pw.Column(
                   crossAxisAlignment: pw.CrossAxisAlignment.start,
                   children: [
                     pw.Text(
                       'Skill:',
                       style: pw.TextStyle(
                         color: PdfColors.black,
                         fontSize: 20,
                       ),
                     ),
                     pw.Column(

                         children: List.generate(
                             skControllerList.length,
                                 (index) => pw.Column(
                                 crossAxisAlignment:
                                 pw.CrossAxisAlignment.start,
                                 children: [
                                   pw.SizedBox(height: 2),
                                   pw.Text(
                                       '${skControllerList[index].skill!.text}',
                                       style: pw.TextStyle(
                                           fontWeight:
                                           pw.FontWeight.bold,
                                           color: PdfColors.black)),
                                 ]))),
                   ]
                 ),
                        pw.SizedBox(height: 10),
                        pw.Text(
                          'Reference:',
                          style: pw.TextStyle(
                            color: PdfColors.black,
                            fontSize: 20,
                          ),
                        ),
                        pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: List.generate(
                                ReControllerList.length,
                                    (index) => pw.Column(
                                    crossAxisAlignment:
                                    pw.CrossAxisAlignment.start,
                                    children: [
                                      pw.SizedBox(height: 10),
                                      pw.Text(
                                          ' Name:${ReControllerList[index].Rename!.text}',
                                          style: pw.TextStyle(
                                              fontWeight:
                                              pw.FontWeight.bold,
                                              color: PdfColors.black)),
                                      pw.Text(
                                          'Job Title:${ReControllerList[index].Rejob!.text}',
                                          style: pw.TextStyle(
                                              fontWeight:
                                              pw.FontWeight.bold,
                                              color: PdfColors.black)),
                                      pw.Text(
                                          'Company Name:${ReControllerList[index].Recom!.text}',
                                          style: pw.TextStyle(
                                              fontWeight:
                                              pw.FontWeight.bold,
                                              color: PdfColors.black)),
                                      pw.Text(
                                          'Email:${ReControllerList[index].Reemail!.text}',
                                          style: pw.TextStyle(
                                              fontWeight:
                                              pw.FontWeight.bold,
                                              color: PdfColors.black)),
                                      pw.Text(
                                          'Phone :${ReControllerList[index].Rephone!.text}',
                                          style: pw.TextStyle(
                                              fontWeight:
                                              pw.FontWeight.bold,
                                              color: PdfColors.black)),
                                    ]))),
                        pw.SizedBox(height: 10),
                        pw.Text(
                          'Project:',
                          style: pw.TextStyle(
                            color: PdfColors.black,
                            fontSize: 20,
                          ),
                        ),
                        pw.Column(
                            crossAxisAlignment: pw.CrossAxisAlignment.start,
                            children: List.generate(
                                procontrollerlist.length,
                                    (index) => pw.Column(
                                    crossAxisAlignment:
                                    pw.CrossAxisAlignment.start,
                                    children: [
                                      pw.SizedBox(height: 2),
                                      pw.Text(
                                          '${procontrollerlist[index].project!.text}',
                                          style: pw.TextStyle(
                                              fontWeight:
                                              pw.FontWeight.bold,
                                              color: PdfColors.black)),
                                    ]))),
                      ])
                    ],
                  ),
                ]),
              )
            ];
          }));

  return pdf.save();
}
