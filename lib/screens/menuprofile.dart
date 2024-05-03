import 'package:flutter/material.dart';

class MenuProfile extends StatefulWidget {
  const MenuProfile({super.key});

  @override
  State<MenuProfile> createState() => MenuProfileState();
}

class MenuProfileState extends State<MenuProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 51, 174, 188),
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 45),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/profilepic.png"),
              ),
            ),
          ),
          const Text(
            "Emmanuel James Bejer",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "emmanueljamesbejer@gmail.com",
            style: TextStyle(
              color: Colors.grey[200],
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
