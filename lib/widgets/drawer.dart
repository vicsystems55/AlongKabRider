import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:argon_flutter/constants/Theme.dart';

import 'package:argon_flutter/widgets/drawer-tile.dart';

class ArgonDrawer extends StatelessWidget {
  final String currentPage;

  ArgonDrawer({this.currentPage});

  _launchURL() async {
    const url = 'https://creative-tim.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: ArgonColors.white,
      child: Column(children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 0.85,
            child: SafeArea(
              bottom: false,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Image.asset("assets/img/argon-logo.png"),
                ),
              ),
            )),
        Expanded(
          flex: 2,
          child: ListView(
            padding: EdgeInsets.only(top: 100, left: 16, right: 16),
            children: [
              DrawerTile(
                  icon: Icons.home,
                  onTap: () {
                    if (currentPage != "Home")
                      Navigator.pushReplacementNamed(context, '/home');
                  },
                  iconColor: ArgonColors.success,
                  title: "Home",
                  isSelected: currentPage == "Home" ? true : false),
              DrawerTile(
                  icon: Icons.person,
                  onTap: () {
                    if (currentPage != "Profile")
                      Navigator.pushReplacementNamed(context, '/profile');
                  },
                  iconColor: ArgonColors.success,
                  title: "My Profile",
                  isSelected: currentPage == "Profile" ? true : false),
              DrawerTile(
                  icon: Icons.notifications,
                  onTap: () {
                    if (currentPage != "Profile")
                      Navigator.pushReplacementNamed(context, '/profile');
                  },
                  iconColor: ArgonColors.success,
                  title: "Notificaitons",
                  isSelected: currentPage == "Profile" ? true : false),
              DrawerTile(
                  icon: Icons.settings,
                  onTap: () {
                    if (currentPage != "Account")
                      Navigator.pushReplacementNamed(context, '/account');
                  },
                  iconColor: ArgonColors.success,
                  title: "Settings",
                  isSelected: currentPage == "Account" ? true : false),
              DrawerTile(
                  icon: Icons.help,
                  onTap: () {
                    if (currentPage != "Elements")
                      Navigator.pushReplacementNamed(context, '/elements');
                  },
                  iconColor: ArgonColors.success,
                  title: "Help & Support",
                  isSelected: currentPage == "Elements" ? true : false),
              DrawerTile(
                  icon: Icons.logout,
                  onTap: () {
                    if (currentPage != "Articles")
                      Navigator.pushReplacementNamed(context, '/login');
                  },
                  iconColor: ArgonColors.success,
                  title: "Logout",
                  isSelected: currentPage == "Articles" ? true : false),
            ],
          ),
        ),
        // Expanded(
        //   flex: 1,
        //   child: Container(
        //       padding: EdgeInsets.only(left: 8, right: 16),
        //       child: Column(
        //         mainAxisAlignment: MainAxisAlignment.start,
        //         crossAxisAlignment: CrossAxisAlignment.start,
        //         children: [
        //           Divider(height: 4, thickness: 0, color: ArgonColors.muted),
        //           Padding(
        //             padding:
        //                 const EdgeInsets.only(top: 16.0, left: 16, bottom: 8),
        //             child: Text("DOCUMENTATION",
        //                 style: TextStyle(
        //                   color: Color.fromRGBO(0, 0, 0, 0.5),
        //                   fontSize: 15,
        //                 )),
        //           ),
        //           DrawerTile(
        //               icon: Icons.airplanemode_active,
        //               onTap: _launchURL,
        //               iconColor: ArgonColors.muted,
        //               title: "Getting Started",
        //               isSelected:
        //                   currentPage == "Getting started" ? true : false),
        //         ],
        //       )),
        // ),
      ]),
    ));
  }
}
