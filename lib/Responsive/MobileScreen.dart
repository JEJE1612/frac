// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frac/pages/Chat.dart';
import 'package:frac/pages/Events.dart';
import 'package:frac/pages/Groups.dart';
import 'package:frac/pages/Home.dart';
import 'package:frac/pages/Profile.dart';
import 'package:frac/pages/Question&Answer.dart';
import 'package:frac/pages/Search.dart';
import 'package:frac/pages/add_post.dart';
import 'package:frac/shared/colors.dart';

class MobileScerren extends StatefulWidget {
  const MobileScerren({Key? key}) : super(key: key);

  @override
  State<MobileScerren> createState() => _MobileScerrenState();
}

  int currentPage = 0;

class _MobileScerrenState extends State<MobileScerren> {
  final PageController _pageController = PageController();
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        
        onTap: (index) {
          // navigate to the tabed page
          _pageController.jumpToPage(index);
          setState(() {
            currentPage = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
        
              icon: Icon(
                Icons.home,
                color:
                Color.fromARGB(255, 100, 211, 157),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.question_answer,
                
                color: Color.fromARGB(255, 100, 211, 157),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.groups,
                  color:
                Color.fromARGB(255, 100, 211, 157),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.event,
                  color:
                Color.fromARGB(255, 100, 211, 157),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,  color:
                Color.fromARGB(255, 100, 211, 157),
              ),
              label: ""),
        ],
        
        selectedItemColor: Colors.amber[800],
      ),
      body: PageView(
        onPageChanged: (index) {
          print("------- $index");
        },
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: [
          Home(),
          QuestionAnswer(),
          Groups(),
          Events(),
          //Chat(),
          Profile(),
        ],
      ),
    );
  }
}
