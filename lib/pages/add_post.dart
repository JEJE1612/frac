
import 'package:flutter/material.dart';
import 'package:frac/shared/colors.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}) : super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      //MediaQuery.of(context).size.width >600 ?null :
      AppBar(
        title: Text("Add Post",),
        backgroundColor: appbarGreen,
        elevation: 0.0,

      ),
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(children: [
          Row(
            children: [
              Container(
        margin: EdgeInsets.only(left: 18),
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color.fromARGB(125, 78, 91, 110),),
                child: CircleAvatar(
                  radius: 44,
                  backgroundImage: NetworkImage(
                    // widget.snap["profileImg"],
                      "https://i.pinimg.com/564x/94/df/a7/94dfa775f1bad7d81aa9898323f6f359.jpg"),
                ),
              ),
              SizedBox(width: 22,),
              Column(
                children: [
                  Text(
                    "Sanaa Adel",
                    style: TextStyle(
                      fontSize: 22,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                 
                   

                      //color: Color.fromARGB(125, 78, 91, 110),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),

                       child: Text(
                        "Public ^",
                        style: TextStyle(
                            fontSize: 15,
                            //fontWeight: FontWeight.bold,
                            color: Colors.black),
                    ),
                     ),
                  
                ],
              ),
            ],
          )
        ],),
      ),
    );
  }
}