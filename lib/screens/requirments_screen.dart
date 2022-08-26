import 'package:flutter/material.dart';

import 'choices_screen.dart';

class RequirmentsScreen extends StatelessWidget {
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
              "شروط القبول",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w100,
                  fontFamily: "Lalezar" //grey[600]
                  ),
            ),
          ),
          body: Container(
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 111, 35, 127),
                    borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Column(
                    children: [
                      Text(
                        "1. ألا يزيد سن الطالب في أول أكتوبر للعام الدراسي 2021-2022 عن 18 سنة",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                          width: 200,
                          height: 1,
                          color: Colors.white,
                        ),
                      Text(
                        "2. أن يكون الطالب لائقا طبيا",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                          width: 200,
                          height: 1,
                          color: Colors.white,
                        ),
                      Text(
                        "3. أن يتمتع الطالب بالجنسية المصرية",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                       Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                          width: 200,
                          height: 1,
                          color: Colors.white,
                        ),
                      Text(
                        "4. اجتياز الطالب لاختبارات القبول والمقابلة الشخصية",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                          width: 200,
                          height: 1,
                          color: Colors.white,
                        ),
                      Text(
                        "5. إجادة اللغة الإنجليزية",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )
                    ],
                  )),
                ),
              ),
            ),
          ),
        ));
  }
}
