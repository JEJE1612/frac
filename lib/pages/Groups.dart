import 'package:flutter/material.dart';
import 'package:frac/model/item.dart';
import 'package:frac/pages/Details_subjects.dart';
import 'package:frac/pages/Search.dart';
import 'package:frac/pages/allgoups.dart';
import 'package:frac/provider/cart.dart';
import 'package:provider/provider.dart';
import 'package:frac/shared/colors.dart';

class Groups extends StatefulWidget {
  @override
  State<Groups> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
//  const Groups({Key? key}) : super(key: key);
  bool isGoin = true;

  @override
  Widget build(BuildContext context) {
    final Carttt = Provider.of<Cart>(context);
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.symmetric(
            vertical: 11, horizontal: MediaQuery.of(context).size.width > 600 ? MediaQuery.of(context).size.width / 6 : 0),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 33
              ),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return GridTile(
                  footer: GridTileBar(
                    backgroundColor: const Color.fromARGB(182, 0, 0, 0),
                    trailing: Icon(Icons.more_vert),

                    // ElevatedButton(
                    //   onPressed: () {
                    //     setState(() {
                    //       Carttt.add(items[index]);
                    //     });
                    //   },
                    //   style: ButtonStyle(
                    //     backgroundColor: MaterialStateProperty.all(BTNgreen),
                    //     padding:
                    //         MaterialStateProperty.all(const EdgeInsets.all(10)),
                    //     shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(8))),
                    //   ),
                    //   child: Text(
                    //     isGoin ? "Goin" : "Goined",
                    //     style: TextStyle(fontSize: 15),
                    //   ),
                    // ),
                    title: Text(
                      items[index].SubjectName,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Details_subjects(product: items[index]),
                        ),
                      );
                    },
                    child: Image.asset(items[index].imgPath),
                    //   CircleAvatar(
                    //       radius: 10,
                    //       backgroundImage: AssetImage(items[index].imgPath)),

                  ),);}),
        ),
      ),
      appBar: MediaQuery.of(context).size.width >600 ?null : AppBar(
        backgroundColor: Colors.white,
        title: const Text("Groups",style: TextStyle(color:  const Color.fromARGB(255, 17, 114, 67))),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Search(),
                    ),
                  );
                },
                icon: Icon(Icons.search,
                color:  const Color.fromARGB(255, 17, 114, 67)
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Stack(
                children: [
                  Positioned(
                    bottom: 19,
                    child: Container(
                        child: Text(
                          "${Carttt.selectedSubject.length}",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(211, 164, 255, 193),
                            shape: BoxShape.circle)),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AllGroups(),
                        ),
                      );
                    },
                    icon: Icon(Icons.groups,
                    color:  const Color.fromARGB(255, 17, 114, 67)
                
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      // backgroundColor:
      // MediaQuery.of(context).size.width > 600 ? secondaryColor2 : Colors.white,
    );
  }
}
