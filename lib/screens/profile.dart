import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(left: 1000, top: 20, bottom: 20)),
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/images/profilepic.png'),
          ),
          Padding(padding: EdgeInsets.only(top: 50)),
          Text(
            'Emmanuel James Bejer',
            style: TextStyle(
              fontSize: 30.0,
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico',
            ),
          ),
          // const Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            'emmanueljamesbejer@gmail.com',
            style: TextStyle(
                fontSize: 16.0,
                color: Color.fromARGB(255, 0, 0, 0),
                letterSpacing: 2.5,
                fontWeight: FontWeight.w500,
                fontFamily: 'Source Sans Pro'),
          ),
          SizedBox(
            height: 50,
            width: 300,
            child: Divider(
              thickness: 10,
              indent: 10,
              endIndent: 10,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Text(
            "LINKEDIN",
            style: TextStyle(
                fontSize: 20.0,
                color: Color.fromARGB(255, 0, 0, 0),
                letterSpacing: 2.5,
                fontWeight: FontWeight.w800,
                fontFamily: 'Source Sans Pro'),
          ),
          Text(
            "www.linkedin.com/in/emmanuel-bejer/",
            style: TextStyle(
                fontSize: 14.0,
                color: Color.fromARGB(255, 0, 0, 0),
                letterSpacing: 2.5,
                fontWeight: FontWeight.w800,
                fontFamily: 'Source Sans Pro'),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            "GITHUB",
            style: TextStyle(
                fontSize: 20.0,
                color: Color.fromARGB(255, 0, 0, 0),
                letterSpacing: 2.5,
                fontWeight: FontWeight.w800,
                fontFamily: 'Source Sans Pro'),
          ),
          Text(
            "www.github.com/emmanuel-bejer/maptest",
            style: TextStyle(
                fontSize: 14.0,
                color: Color.fromARGB(255, 0, 0, 0),
                letterSpacing: 2.5,
                fontWeight: FontWeight.w800,
                fontFamily: 'Source Sans Pro'),
          ),
        ],
      ),
    );
  }
}
