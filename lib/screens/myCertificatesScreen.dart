import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:we_school/screens/about_developer_screen.dart';

class MyCertificatesScreen extends StatelessWidget {
  const MyCertificatesScreen({Key? key}) : super(key: key);

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
                      MaterialPageRoute(builder: (context) => AboutDeveloperScreen()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ))
            ],
            title: Text(
              "شهاداتي",
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w100,
                  fontFamily: "Lalezar" //grey[600]
                  ),
            ),
          ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
            		children: [
            			Text("بعض الشهادات التي حصلت عليها :" , style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            			SizedBox(height: 20,),
            			Image(image: AssetImage("assets/1.png")),
            			SizedBox(height: 22,),
            			Image(image: AssetImage("assets/2.jpg")),
            			SizedBox(height: 22,),
            			Image(image: AssetImage("assets/3.jpg")),
            			SizedBox(height: 22,),
            			Image(image: AssetImage("assets/4.png")),
            			SizedBox(height: 22,),
            		],
            	),
          ),
        ),
        ),
    );
  }
}