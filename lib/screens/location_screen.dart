import 'package:flutter/material.dart';
import 'package:we_school/components.dart';

import 'choices_screen.dart';

class LocationScreen extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return Directionality(
      textDirection: TextDirection.rtl,
		  child: Scaffold(
		  	appBar: AppBar(
          backgroundColor: Colors.white,
          titleSpacing: 10,
          elevation: 8,
          leading: const Image(
            image: AssetImage('assets/icon.jpg')),/*NetworkImage(
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
            "الموقع",
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
                        "assets/location.jpg"), 
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          
              SizedBox(height: 20),
              MyThirdEditedCard("محافظة الجيزة  : مدرسة الشيخ زايد الرسمية الفندقية المتقدمة", Icons.location_on, ChoicesScreen(),navigate:false, ph:10, wid:238, URL:"https://maps.google.com/?cid=7973153216401312841&entry=gps"
                ),
              MyThirdEditedCard("محافظة القاهرة : مدرسة مصطفى كامل الثانوية الصناعية - بنات", Icons.location_on, ChoicesScreen(),navigate:false, ph:10, wid:238, URL:"https://maps.google.com/?cid=7537647409754377962&entry=gps"
                ),
              MyThirdEditedCard("محافظة الإسكندرية : مدرسة مصطفى كامل الثانوية الصناعية - بنات",Icons.location_on,ChoicesScreen(),navigate:false, ph:10, wid:238, URL:"https://goo.gl/maps/yHVN1sTb7fQbKsmC6"
                ),
              MyThirdEditedCard("محافظة الدقهلية : مدرسة المنصورة الثانوية الزخرفية - بنات",Icons.location_on,ChoicesScreen(),navigate:false, ph:10, wid:238, URL:"https://goo.gl/maps/9qECB1mdDiLRFD378"
                ),
              MyThirdEditedCard("محافظة المنيا : مدرسة الحي الثالث الرسمية للغات", Icons.location_on,ChoicesScreen(),navigate:false, ph:10, wid:238, URL:"https://goo.gl/maps/ga4hPvPyiQ9hsLwE8"
                ),
              MyThirdEditedCard("محافظة السويس : مدرسة عقبة بن نافع الثانوية الصناعية",Icons.location_on,ChoicesScreen(),navigate:false, ph:10, wid:238, URL:"https://goo.gl/maps/FsTEfMrPPLdwdoxF6")
              ],),
                  ),
                ],
              ),
            ),
          ),
        ),
     
		  	),
		);	}
}
