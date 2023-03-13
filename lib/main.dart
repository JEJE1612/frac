import 'package:flutter/material.dart';
import 'package:frac/Responsive/MobileScreen.dart';
import 'package:frac/Responsive/Responsive.dart';
import 'package:frac/Responsive/WepScreen.dart';
import 'package:frac/pages/Groups.dart';
import 'package:frac/pages/Home.dart';
import 'package:frac/pages/Login.dart';
import 'package:frac/pages/allgoups.dart';
import 'package:frac/provider/cart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: ChangeNotifierProvider(
        create: (context) {
          return Cart();
        },
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          //theme: ThemeData.dark(),
          home: Resposive(
            myMobileScreen: MobileScerren(),
            myWebScreen: WebScerren(),
          ),
        ),
      ),
    );
  }
}

//       Resposive(
//         myMobileScreen: MobileScerren(),
//         myWebScreen: WebScerren(),
//       ),
//     );
//   }
// }
