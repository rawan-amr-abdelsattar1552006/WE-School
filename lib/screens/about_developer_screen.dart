

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:we_school/components.dart';
import "package:url_launcher/url_launcher.dart";
import 'package:we_school/screens/myCertificatesScreen.dart';

import 'choices_screen.dart';

class AboutDeveloperScreen extends StatelessWidget {
  TextStyle mainTextStyle = TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        
        appBar: AppBar(
          backgroundColor: Colors.white,
          titleSpacing: 10,
          elevation: 8,
          leading: const Image(image: AssetImage('assets/icon.jpg')),
          /*NetworkImage(
                "https://scontent.fcai22-1.fna.fbcdn.net/v/t39.30808-6/254703982_109572444871158_1735240021513276497_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=LdHPL8btuVQAX9Ft73q&tn=HwKtzkD-_sxQdUpR&_nc_ht=scontent.fcai22-1.fna&oh=00_AT-qRzPxJT29CnSgbqXFOE1qs6_Wy40KNvzKvC84LSQtpQ&oe=62F49A89"),
          ),*/
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChoicesScreen()),
                  );
                },
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ))
          ],
          title: Text(
            "عن المطورة",
            style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w100,
                fontFamily: "Lalezar" 
                ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/myPic1.jpeg"),
                    radius: 80,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "المهندسة  / روان",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "Lalezar", /*color: Colors.white*/
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 111, 35, 127),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "بيانات أساسية",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            )),
                        SizedBox(height: 10),
                        Text("الاسم بالكامل : روان عمرو عبدالستار عبدالعال",
                            style: mainTextStyle),
                        Text("السن : 16 عام", style: mainTextStyle),
                        Text(
                          "مجموع الإعدادية : 278.5 ",
                          style: mainTextStyle,
                        ),
                        Text("الترتيب على المدرسة : الأول ",
                            style: mainTextStyle),
                        Text("الترتيب على  إدارة الشيخ زايد : التاسع ",
                            style: mainTextStyle),
                         Text("ومن حيث المجموع : الثالث",
                            style: mainTextStyle)

                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Center(
                              child: Text(
                                "اللغات",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            ),
                        SizedBox(height: 20,),
                        Row(
                          children: [
                            CircularPercentIndicator(
                              radius: 130.0,
                              lineWidth: 15,
                              percent: 0.90,
                              center: new Text("الإنجليزية"),
                              progressColor: Color.fromARGB(255, 111, 35, 127),
                            ),
                            SizedBox(width: 50),
                            CircularPercentIndicator(
                              radius: 130.0,
                              lineWidth: 15,
                              percent: 0.5,
                              center: new Text("الألمانية"),
                              progressColor:Color.fromARGB(255, 111, 35, 127),
                            ),

                          ],),
                        SizedBox(height: 30,),
                          Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 111, 35, 127),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Container(
                            width: 300,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "المهارات التقنية",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                            )),
                        SizedBox(height: 10),
                        Text("أنا مهندسة برمجيات متوسطة الخبرة وعلى علم بالكثير من  التقنيات في العديد من المجالات كتطوير تطبيقات الهاتف ومواقع الويب ودرست العديد من لغات البرمجة مثل  python  و  javascript و  C# وفي النهاية استقررت على تعلم  Dart  والعمل  على Flutter Framework الخاص بشركة جوجل العالمية",
                            style: mainTextStyle),
                                              ],
                    ),
                  ),
                          SizedBox(height: 30,),
                        Center(child: Text("أستطيع التعامل مع : ",style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),),),
                        SizedBox(height: 15,),
                        MySecondEditedCard("Command Line Tools مثل  Linux Terminal  و  CMD", Icons.looks_one, ChoicesScreen(), navigate: false,ph:10),
                        MySecondEditedCard("SQL Databases", Icons.looks_two, ChoicesScreen(), navigate: false,ph:10),
                        MySecondEditedCard("IDEs مثل VS Code  و  Android Studio و  Intellij", Icons.looks_3, ChoicesScreen(), navigate: false,ph:10),
                        MySecondEditedCard("Linux OS", Icons.looks_4, ChoicesScreen(), navigate: false,ph:10)
                        
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Center(
                    child: Row(children: [ 
                      SizedBox(width: 20,),
                      FloatingActionButton.extended(
        backgroundColor: Color.fromARGB(255, 111, 35, 127), // rgba(111,35,127,255)
        label: const Text(
          "مدونتي",
          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w100,
                            fontFamily: "Cairo",
                            color: Colors.white
                            ),
          ),
        icon: Icon(Icons.web),
        onPressed: () {
          launch("https://codewithrona.blogspot.com/");
          },
      ),
                     SizedBox(width: 10,),
                      FloatingActionButton.extended(
        backgroundColor: Color.fromARGB(255, 111, 35, 127), // rgba(111,35,127,255)
        label: const Text(
          "شهاداتي",
          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w100,
                            fontFamily: "Cairo",
                            color: Colors.white
                            ),
          ),
        icon: Icon(Icons.verified),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => MyCertificatesScreen()));
          },
      ),],),
                  )
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
