import 'package:flutter/material.dart';
import 'package:we_school/screens/choices_screen.dart';
import "package:url_launcher/url_launcher.dart";

class MyCard extends StatelessWidget {
  String text = "";
  IconData icon = Icons.settings;
  Widget navigateScreen = ChoicesScreen();
  bool navigate = true;
  double ph = 80;

  MyCard(this.text, this.icon, this.navigateScreen,
      {this.navigate = true, this.ph = 80});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 90,
      child: InkWell(
        onTap: () {
          if (navigate) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => navigateScreen));
          }
        },
        splashColor: Color.fromARGB(100, 111, 35, 127),
        child: Card(
          color: Color.fromARGB(255, 111, 35, 127),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: ph),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(icon, color: Colors.white),
                SizedBox(width: 20),
                Text(
                  text,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyCard2 extends StatelessWidget {
  String text = "";
  IconData icon = Icons.settings;
  Widget navigateScreen = ChoicesScreen();
  bool navigate = true;
  double ph = 80;
  Color color = Color.fromARGB(255, 111, 35, 127);

  MyCard2(this.text, this.icon, this.navigateScreen,
      {this.navigate = true, this.ph = 10, this.color = Colors.white,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      margin: EdgeInsets.all(5),
      child: InkWell(
        onTap: () {
          if (navigate) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => navigateScreen));
          }
        },
        splashColor: Color.fromARGB(100, 111, 35, 127),
        child: Card(
          color: Color.fromARGB(255, 111, 35, 127),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(icon, color: Colors.white),
                  SizedBox(width: 10),
                  Text(
                    text,
                    style: TextStyle(color: Colors.white),
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

class MyEditedCard extends StatelessWidget {
  String text = "";
  IconData icon = Icons.settings;
  Widget navigateScreen = ChoicesScreen();
  bool navigate = true;
  double ph = 80;

  MyEditedCard(this.text, this.icon, this.navigateScreen,
      {this.navigate = true, this.ph = 80});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 90,
      child: Card(
        color: Color.fromARGB(255, 111, 35, 127),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: ph),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white),
              SizedBox(width: 20),
              Text(
                text,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MySecondEditedCard extends StatelessWidget {
  String text = "";
  IconData icon = Icons.settings;
  Widget navigateScreen = ChoicesScreen();
  bool navigate = true;
  double ph = 80;
  double wid = 200;

  MySecondEditedCard(this.text, this.icon, this.navigateScreen,
      {this.navigate = true, this.ph = 80, this.wid = 200});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 120,
      child: Card(
        color: Color.fromARGB(255, 111, 35, 127),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: ph, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon, color: Colors.white),
              SizedBox(width: 20),
              Container(
                width: 200,

                  child: Text(
                text,
                style: TextStyle(color: Colors.white),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class MyThirdEditedCard extends StatelessWidget {
  String text = "";
  IconData icon = Icons.settings;
  Widget navigateScreen = ChoicesScreen();
  bool navigate = true;
  double ph = 80;
  double wid = 200;
  String URL = "";

  MyThirdEditedCard(this.text, this.icon, this.navigateScreen,
      {this.navigate = true, this.ph = 80, this.wid = 200,this.URL="",});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Color.fromARGB(100, 111, 35, 127),
      onTap: () => launch(URL),
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        height: 120,
        child: Card(
          color: Color.fromARGB(255, 111, 35, 127),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: ph, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(icon, color: Colors.white),
                SizedBox(width: 20),
                Container(
                  width: 200,

                    child: Text(
                  text,
                  style: TextStyle(color: Colors.white),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  
  String text = "";
  IconData icon = Icons.settings;
  Widget navigateScreen = ChoicesScreen();
  bool navigate = true;
  double ph = 80;

  GridItem(this.text, this.icon, this.navigateScreen,
      {this.navigate = true, this.ph = 80});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        if (navigate) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => navigateScreen));
          }
        },
      
      child: Container(
        width: 130,
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 111, 35, 127), //rgba(17,21,38,255)
        ),
        padding:
            EdgeInsets.symmetric(vertical: 25, horizontal: 21.5),
        child: Column(
          children: [
            Icon(
              icon,
              size: 40,
              color: Colors.white,
            ),
            Text(text
              ,
              style: TextStyle(
                  color: Colors.white, //rgba(124,124,142,255)
                  fontWeight: FontWeight.w300,
                  fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}