import 'package:flutter/material.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        backgroundColor: Color(0Xff864AF9),
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop('/det');
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        centerTitle: true,
        title: Text(
          ' Education',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          InkWell(
              onTap: () {
                TextEditingController txtcourse = TextEditingController();
                TextEditingController txtschool = TextEditingController();
                TextEditingController txtgrade = TextEditingController();
                TextEditingController txtyear = TextEditingController();
                setState(() {
                  year = txtyear.text;
                  course = txtcourse.text;
                  grade = txtgrade.text;
                  school = txtschool.text;

                  Navigator.of(context).pushNamed('/pdf');

                  Navigator.of(context).pushNamed('/prview');
                });
              },
              child: Icon(
                Icons.check,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          ...List.generate(
              ControllerList.length,
              (index) => Container(
                   margin: EdgeInsets.only(top: 50,left: 50,right: 50),
                    padding: EdgeInsets.all(8),
                    height: 320,
                    width: 300,
                    color: Colors.white,
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              ControllerList.removeAt(index-1);
                            });
                          },
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                                        Icons.delete,
                                                      ),
                            )),
                        educationbox(
                            'School/University', ControllerList[index].school!),
                        SizedBox(
                          height: 5,
                        ),
                        educationbox('Course', ControllerList[index].course!),
                        SizedBox(
                          height: 5,
                        ),
                        educationbox('Grade', ControllerList[index].grade!),
                        SizedBox(height: 5,),
                        educationbox('Year', ControllerList[index].year!),
                      ],

      )),

            )
            ]
    )
    ),
      floatingActionButton: InkWell(
        onTap: () {
          TextEditingController txtcourse = TextEditingController();
          TextEditingController txtschool = TextEditingController();
          TextEditingController txtgrade = TextEditingController();
          TextEditingController txtyear = TextEditingController();
          setState(() {
            ControllerList.add(controllerModal(
                course: txtcourse,
                school: txtschool,
                year: txtyear,
                grade: txtgrade));
          });
        },
        child: Container(
          height: 40,
          width: 60,
          decoration: BoxDecoration(
            color: Color(0Xff864AF9),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              Text(
                'ADD',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }

  TextField educationbox(String label, TextEditingController Controller) {
    return TextField(
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
    );
  }
}

String? course = '';
String? school = '';
String? grade = '';
String? year = '';
TextEditingController txtcontroller = TextEditingController();

class controllerModal {
  TextEditingController? school;
  TextEditingController? course;
  TextEditingController? year;
  TextEditingController? grade;

  controllerModal({this.school, this.course, this.year, this.grade});
}

List<controllerModal> ControllerList = [
  controllerModal(
      course: txtcourse, school: txtschool, grade: txtgrade, year: txtyear)
];
TextEditingController txtcourse = TextEditingController();
TextEditingController txtschool = TextEditingController();
TextEditingController txtgrade = TextEditingController();
TextEditingController txtyear = TextEditingController();




