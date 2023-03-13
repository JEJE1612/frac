// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:frac/pages/Events.dart';
import 'package:frac/pages/Groups.dart';
import 'package:frac/pages/Home.dart';
import 'package:frac/pages/Login.dart';
import 'package:frac/pages/Profile.dart';
import 'package:frac/pages/Question&Answer.dart';
import 'package:frac/pages/Search.dart';
import 'package:frac/shared/colors.dart';

class WebScerren extends StatefulWidget {
  const WebScerren({Key? key}) : super(key: key);

  @override
  State<WebScerren> createState() => _WebScerrenState();
}

class _WebScerrenState extends State<WebScerren> {
  final PageController _pageController = PageController();
  int page = 0;
  navigate2Screen(int indexx) {
    _pageController.jumpToPage(indexx);
    setState(() {
      page = indexx;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            Column(
              children: [
                const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/background.jpg"),
                        fit: BoxFit.cover),
                  ),
                  accountName: Text("Sanaa Adel",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      )),
                  accountEmail: Text("sanaaadel123@yahoo.com"),
                  currentAccountPictureSize: Size.square(99),
                  currentAccountPicture: CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage("images/sanaa.jpg")),
                ),
                ListTile(
                    title: const Text("Home"),
                    leading: const Icon(Icons.home),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    }),
                ListTile(
                    title: const Text("My groups"),
                    leading: const Icon(Icons.group),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Groups(),
                        ),
                      );
                    }),
                ListTile(
                    title: const Text("About"),
                    leading: const Icon(Icons.help_center),
                    onTap: () {

                    }),
                ListTile(
                    title: const Text("Logout"),
                    leading: const Icon(Icons.exit_to_app),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    }),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              child: const Text("Developed by sanaa adel © 2022",
                  style: TextStyle(fontSize: 16)),
            )
          ],
        ),
      ),
      body:PageView(
        onPageChanged: (index) {},
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          Home(),
          QuestionAnswer(),
          Groups(),
          Events(),
          Profile(),
        ],
      ),
      appBar: AppBar(
        backgroundColor: appbarGreen,
        actions: [
          IconButton(
            icon: Icon(
              Icons.home,
              color: page == 0 ? primaryColor : mobileBackgroundColor,
            ),
            onPressed: () {
              navigate2Screen(0);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.question_answer,
              color: page == 1 ? primaryColor : mobileBackgroundColor,
            ),
            onPressed: () {
              navigate2Screen(1);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.groups,
              color: page == 2 ? primaryColor : mobileBackgroundColor,
            ),
            onPressed: () {
              navigate2Screen(2);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.event,
              color: page == 3 ? primaryColor : mobileBackgroundColor,
            ),
            onPressed: () {
              navigate2Screen(3);
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person,
              color: page == 4 ? primaryColor : mobileBackgroundColor,
            ),
            onPressed: () {
              navigate2Screen(4);
            },
          ),
        ],
        title: Text("FCI Community"),
      ),
    );
  }
}