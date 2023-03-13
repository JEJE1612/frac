
import 'package:flutter/material.dart';
import 'package:frac/pages/add_post.dart';
import 'package:frac/shared/colors.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:
      // MediaQuery.of(context).size.width > 600 ? secondaryColor2 : Colors.white,
      floatingActionButton: FloatingActionButton(
          backgroundColor: appbarGreen,
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    AddPost(),
              ),
            );
          },
          child: Icon(Icons.add,
            color: Colors.white,
          )),
      appBar: MediaQuery.of(context).size.width >600 ?null : AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text("Profile Screen",
          style: TextStyle(color: Color.fromARGB(255, 50, 114, 83),fontStyle:FontStyle.italic),
          ),
        ),
      ),       backgroundColor: Color.fromARGB(255, 218, 216, 216), 
    
      body:  SingleChildScrollView(
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 5,),
             Container(
            
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
              color: Colors.white
              ),
               child: Row(
                      children:  [
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            
                            CircleAvatar(
      
                              radius: 55.0,
                              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/106709207?v=4'),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
      
                          children: [
      
                            
      
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text('Ahmed Fawzi',
                                  style: TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text('General . level 4',
                                  style: TextStyle(
      
                                  ),
      
                                ),
                              ],
                            ),
      
                          ],
                        )
                      ],
                    ),
             ),
             SizedBox(height: 5,),
                         
      
                Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
              color: Colors.white
              ),  
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          bottom: 6.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.numbers_rounded,
                              color: Colors.green,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('190058',
                              style: TextStyle(
                                fontSize: 19,
                              ),
                            ),
                          ],
                        ),
                      ),
                                Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      bottom: 6.0,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.mail_rounded,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('justlive054@gmail.com',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      bottom: 6.0,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('01069715504',
                          style: TextStyle(
                            fontSize: 19,
                          ),
                        ),
                      ],
                    ),
                  ),  
                  
                      SizedBox(height: 10,),
                  ],
                  ),
                ),
                              Container(
                  decoration: BoxDecoration(
                    // color: mobileBackgroundColor,
                      borderRadius: BorderRadius.circular(20)
                      ,color:Colors.white 
                      ),
                  margin: EdgeInsets.symmetric(
                      vertical: 11, horizontal: MediaQuery.of(context).size.width > 600 ? MediaQuery.of(context).size.width / 6 : 0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 13),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: const [
                                CircleAvatar(
                                  radius: 26,
                                  backgroundImage: NetworkImage(
                                    // widget.snap["profileImg"],
                                      "https://avatars.githubusercontent.com/u/106709207?v=4"),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  "Ahmed Fawzi",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ],
                            ),
                            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
                          ],
                        ),
                      ),
                      Image.network(
                        // widget.snap["postUrl"],
                        "https://cdn.pixabay.com/photo/2017/10/24/07/12/hacker-2883632__340.jpg",
                        fit: BoxFit.cover,
                        height: MediaQuery.of(context).size.height * 0.35,
                        width: double.infinity,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 11),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.favorite_border),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.comment_outlined,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.send,
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark_outline),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                          width: double.infinity,
                          child: const Text(
                            "10 Likes",
                            //textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 18, color: Color.fromARGB(214, 157, 157, 165)),
                          )),
                      Row(
                        children: const [
                          SizedBox(
                            width: 9,
                          ),
                          Text(
                            // "${widget.snap["username"]}",
                            "Sanaa Adel ",
                            //textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 20, color: Color.fromARGB(255, 189, 196, 199)),
                          ),
                          Text(
                            // " ${widget.snap["description"]}",
                            " Sidi Bou Said ♥",
                            //textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 18, color: Color.fromARGB(255, 189, 196, 199)),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                            margin: const EdgeInsets.fromLTRB(10, 13, 9, 10),
                            width: double.infinity,
                            child: const Text(
                              "view all 100 comments",
                              style: TextStyle(
                                  fontSize: 18, color: Color.fromARGB(214, 157, 157, 165)),
                              //textAlign: TextAlign.start,
                            )),
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 9, 10),
                          width: double.infinity,
                          child: const Text(
                            "10June 2022",
                            style: TextStyle(
                                fontSize: 18, color: Color.fromARGB(214, 157, 157, 165)),
                            // textAlign: TextAlign.start,
                          )),
                    ],
                  ),
                ),
              ],
            ),
      ),



      ) ; 
      
       
  }
}
