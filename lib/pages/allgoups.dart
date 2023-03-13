import 'package:flutter/material.dart';
import 'package:frac/model/item.dart';
import 'package:frac/pages/group_page.dart';
import 'package:frac/provider/cart.dart';
import 'package:frac/shared/colors.dart';
import 'package:provider/provider.dart';
class AllGroups extends StatelessWidget {
  const AllGroups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Carttt = Provider.of<Cart>(context);
    return Scaffold(
      //backgroundColor:
      //MediaQuery.of(context).size.width > 600 ? secondaryColor2 : Colors.white,
      appBar:
      //MediaQuery.of(context).size.width >600 ?null :
      AppBar(
        backgroundColor: Colors.white,
        title: const Text("My Groups",
        style: TextStyle(color:const Color.fromARGB(255, 76, 141, 95)),
        ),
        actions: [

          Row(

            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AllGroups(),
                    ),
                  );
                },
                icon: Icon(Icons.search,
                color: 
                        const Color.fromARGB(255, 17, 114, 67),
                ),
                
              ),
              SizedBox(width: 10,),
              Stack(
                children: [
                  Positioned(
                    bottom: 19,
                    child: Container(
                        child: Text(
                          "${Carttt.selectedSubject.length}",
                          style: TextStyle(
                              fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
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
                    icon: Icon(Icons.groups
               ,     color: 
                        const Color.fromARGB(255, 17, 114, 67),
               
                    ),
                  ),


                ],
              ),
            ],
          ),

        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(12)),
          margin: EdgeInsets.symmetric(
              vertical: 11, horizontal: MediaQuery.of(context).size.width > 600 ? MediaQuery.of(context).size.width / 6 : 0),
          child: Column(children: [
            SingleChildScrollView(
              child: SizedBox(
                height: 550,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Group_page(product: items[2],),
                      ),
                    );
                  },
                  child: Container(
                    child: ListView.builder(
                        padding: const EdgeInsets.all(8),
                        itemCount:Carttt.selectedSubject.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: ListTile(
                              title: Text(Carttt.selectedSubject[index].SubjectName),

                              subtitle: Text("${Carttt.selectedSubject[index].NameDoctor}",

                              ),
                              leading: CircleAvatar(
                                backgroundImage: AssetImage(Carttt.selectedSubject[index].imgPath
                                  ),

                              ),
                              trailing: IconButton(
                                  onPressed: () {
                                    Carttt.delete(Carttt.selectedSubject[index]);
                                  },
                                  icon: Icon(Icons.remove)),
                            ),
                          );
                        }),
                  ),
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