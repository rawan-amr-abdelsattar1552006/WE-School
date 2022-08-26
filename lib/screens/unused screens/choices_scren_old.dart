import 'package:flutter/material.dart';
import 'package:we_school_guide/components.dart';
import 'package:we_school_guide/screens/certificates_screen.dart';
import 'package:we_school_guide/screens/curriculum_screen.dart';
import 'package:we_school_guide/screens/faqs_screen.dart';
import 'package:we_school_guide/screens/home_screen.dart';
import 'package:we_school_guide/screens/location_screen.dart';
import 'package:we_school_guide/screens/pros_screen.dart';
import 'package:we_school_guide/screens/requirments_screen.dart';
import 'package:we_school_guide/screens/specs_screen.dart';
import 'package:we_school_guide/screens/whats_after_graduation_screen.dart';

class ChoicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
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
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                ))
          ],
          title: Text(
            "مدرسة WE للتكنولوجيا التطبيقية",
            style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w100,
                fontFamily: "Lalezar" //grey[600]
                ),
          ),
        ),
        body: SingleChildScrollView(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Center(
              child: Column(
                children: [
                  const Image(
                    image: AssetImage(
                        "assets/school_img.jpeg"), //NetworkImage("https://i.imgur.com/zgQI7Dv.jpeg"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        MyCard(
                            "التخصصات", Icons.business_center, SpecsScreen()),
                        MyCard(
                            "الشهادات", Icons.verified, CertificatesScreen()),
                        MyCard("موقع المدرسة", Icons.location_on,
                            LocationScreen()),
                        MyCard("شروط القبول", Icons.checklist,
                            RequirmentsScreen()),
                        MyCard("المميزات", Icons.star, ProsScreen()),
                        MyCard(
                            "المنهج", Icons.library_books, CurriculumScreen()),
                        MyCard("ماذا بعد التخرج ؟", Icons.work,
                            WhatsAfterGraduationScreen()),
                        MyCard("أسئلة شائعة", Icons.help, FAQsScreen()),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
