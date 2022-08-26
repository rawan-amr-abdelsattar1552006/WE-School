import 'package:flutter/material.dart';
import 'package:we_school/screens/choices_screen.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton.extended(
      	backgroundColor: Color.fromARGB(255, 111, 35, 127), // rgba(111,35,127,255)
        label: const Text(
        	"إبدأ الجولة",
        	style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                          fontFamily: "Cairo",
                          color: Colors.white
                          ),
        	),
        icon: Icon(Icons.arrow_back),
        onPressed: () {
        	Navigator.push(
        		context,
        		MaterialPageRoute(builder: (context) => ChoicesScreen()),
        		);
        	},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Directionality(
      	textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              textDirection: TextDirection.rtl,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                  child: const Image(
                    image: AssetImage('assets/icon.jpg'),/*NetworkImage(
                        "https://scontent.fcai22-1.fna.fbcdn.net/v/t39.30808-6/254703982_109572444871158_1735240021513276497_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=LdHPL8btuVQAX9Ft73q&tn=HwKtzkD-_sxQdUpR&_nc_ht=scontent.fcai22-1.fna&oh=00_AT-qRzPxJT29CnSgbqXFOE1qs6_Wy40KNvzKvC84LSQtpQ&oe=62F49A89"),*/
                    width: 200,
                    height: 200,
                  ),
                ),
                Expanded(
                    child: Column(
                  children: [
                    const Text(
                      "مدرسة WE للتكنولوجيا التطبيقية",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.normal,
                          fontFamily: "Lalezar"),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "تكنولوجيا عالمية بأيدي شباب مصرية",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                          fontFamily: "Lalezar"),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
