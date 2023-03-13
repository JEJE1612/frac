
import 'package:flutter/material.dart';
import 'package:frac/pages/Home.dart';
import 'package:frac/shared/colors.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: MediaQuery.of(context).size.width >600 ?null : AppBar(
       // backgroundColor: appbarGreen,
        //title: Text("Search Screen"),
     // ),
        appBar: AppBar(
        backgroundColor: appbarGreen,
        title:Text("Search"),
        // TextFormField(
        // decoration:
        // const InputDecoration
          // (labelText: 'Search for a user...',
          // suffixStyle: TextStyle(color: Colors.white,fontSize: 40),


        ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.grey[400],
      ),
      child: Row(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: 15.0,
          ),
          Text('Search'),
        ],
      ),
    ),
    ),
     //  appBar: AppBar(
     //    backgroundColor: appbarGreen,
     //    leading: IconButton(onPressed: (){
     //      Navigator.pop(context);
     //    },
     //        color: Colors.black,
     //        icon: const Icon(
     //          Icons.arrow_back_rounded,
     //        )
     //    ),
     //    title: Container(
     //      padding: const EdgeInsets.all(12),
     //      color: Colors.white,
     //      child: TextFormField(
     //
     //        keyboardType: TextInputType.name,
     //        decoration: const InputDecoration(
     //          labelText: 'Search',
     //        ),
     //      ),
     //    ),
     //    actions: [
     //      IconButton(onPressed: (){},
     //          color: Colors.black,
     //          icon: const Icon(
     //            Icons.search_rounded,
     //          )
     //      ),
     //    ],
     //
     //  ),
     //  , Padding(
     //    padding: const EdgeInsets.all(10.0),
     //    child: SingleChildScrollView(
     //      child: Column(
     //        children: [
     //          Row(
     //            mainAxisAlignment: MainAxisAlignment.start,
     //            children: const [
     //              Text(
     //                'Recent Searches',
     //                style: TextStyle(
     //                 // fontWeight: FontWeight.bold,
     //                ),
     //              ),
     //            ],
     //          ),
     //          const SizedBox(
     //            height: 10,
     //          ),
     //          ListView.separated(
     //            physics: const NeverScrollableScrollPhysics(),
     //            shrinkWrap: true,
     //            itemBuilder: (context, index) => searchItem(),
     //            separatorBuilder: (context, index) => const SizedBox(
     //              height: 5.0,
     //            ),
     //            itemCount: 5,
     //          ),
     //
     //
     //
     //
     //        ],
     //      ),
     //    ),
     //  ),
    );


  }

  Widget searchItem() =>
      Row(
        children: [
          const CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/106709207?v=4'),
          ),

          const SizedBox(
            width: 12.0,

          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Ahmed Fawzi',
                  style: TextStyle(
                    fontSize: 14.0,
                   // fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 12.0,
                ),

              ],
            ),
          ),
          IconButton(onPressed: (){},
              icon: const Icon(Icons.cancel_outlined) ),
        ],
      );
}
