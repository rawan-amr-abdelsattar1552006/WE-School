//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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

class ChoicesScreen3 extends StatelessWidget {
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
            child: Column(children: [
              const Image(
                image: AssetImage(
                    "assets/school_img.jpeg"), //NetworkImage("https://i.imgur.com/zgQI7Dv.jpeg"),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,

                  child: Row(
                    
                    children: [
                      GridItem("التخصصات", Icons.business_center, SpecsScreen()),
                      SizedBox(
                        width: 10,
                      ),
                      GridItem("الشهادات", Icons.verified, CertificatesScreen()),
                      SizedBox(
                        width: 10,
                      ),
                
                      GridItem(
                          "شروط القبول", Icons.checklist, RequirmentsScreen()),
                      SizedBox(
                        width: 10,
                      ),
                      GridItem("المميزات", Icons.star, ProsScreen()),
                      SizedBox(
                        width: 10,
                      ),
                      GridItem("المنهج", Icons.library_books, CurriculumScreen()),
                      SizedBox(
                        width: 10,
                      ),
                      
                     
                      GridItem("أسئلة شائعة", Icons.help, FAQsScreen()),
                    ],

                  ),
                ),
              ),
              SizedBox(height: 10,),
               Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                 child: MyCard("موقع المدرسة", Icons.location_on,
                              LocationScreen()),
               ),

 Container(
  margin: EdgeInsets.symmetric(horizontal: 10),
   child: MyCard("ماذا بعد التخرج ؟", Icons.work,
                              WhatsAfterGraduationScreen()),
 ),
            ]),
          )),
    );
  }
}


/*children: [
                      
                    ],*/