import 'package:flutter/material.dart';
import 'package:maptest/screens/events.dart';
import 'package:maptest/screens/maps.dart';
import 'package:maptest/screens/menuprofile.dart';
import 'package:maptest/screens/notifications.dart';
import 'package:maptest/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

enum DrawerSections {
  maps,
  profile,
  events,
  notes,
  settings,
  notifications,
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.maps;

  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.maps) {
      container = const FirstMap();
    } else if (currentPage == DrawerSections.profile) {
      container = const Profile();
    } else if (currentPage == DrawerSections.events) {
      container = const Events();
    } else if (currentPage == DrawerSections.notifications) {
      container = const NotificationsPage();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 51, 174, 188),
        title: const Text("Map App"),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const MenuProfile(),
              menuList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget menuList() {
    return Container(
      padding: const EdgeInsets.all(17),
      child: Wrap(
        children: [
          menuItem(1, "Maps", Icons.map,
              currentPage == DrawerSections.maps ? true : false),
          menuItem(2, "Profile", Icons.person_2,
              currentPage == DrawerSections.profile ? true : false),
          menuItem(3, "Events", Icons.event,
              currentPage == DrawerSections.events ? true : false),
          menuItem(4, "Notifications", Icons.notifications_outlined,
              currentPage == DrawerSections.notifications ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.maps;
            } else if (id == 2) {
              currentPage = DrawerSections.profile;
            } else if (id == 3) {
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              currentPage = DrawerSections.notifications;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


