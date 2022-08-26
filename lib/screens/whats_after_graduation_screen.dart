import 'package:flutter/material.dart';
import 'package:we_school/components.dart';


import 'choices_screen.dart';

class WhatsAfterGraduationScreen extends StatelessWidget {
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
            "ماذا بعد التخرج",
            style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w100,
                fontFamily: "Lalezar" //grey[600]
                ),
          ),
        ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Center(child: Text("المسارات المتاحة للطلاب بعد التخرج من مدارس التكنولوجيا التطبيقية: ", style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    
                    ),),),
                SizedBox(height: 20),
                MySecondEditedCard("الالتحاق بسوق العمل مباشرة", Icons.looks_one, ChoicesScreen(),navigate:false, ph:20),
                MySecondEditedCard("الالتحاق بالجامعات التكنولوجية", Icons.looks_two, ChoicesScreen(),navigate:false, ph:20),
                MySecondEditedCard("الالتحاق بالمعاهد الفنية", Icons.looks_3 ,ChoicesScreen(),navigate:false, ph:20),
                MySecondEditedCard("الالتحاق بالجامعات المصرية بعد إجراء معادلة", Icons.looks_4 ,ChoicesScreen(),navigate:false, ph:20),
                
                
                
                ],),
            ),
          ),
        ),
		  	),
		);
	}
}
