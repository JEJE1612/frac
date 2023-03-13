
import 'package:flutter/material.dart';
import 'package:frac/shared/colors.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.of(context).size.width >600 ?null : AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text("ForgetPassword",
          style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic,
          color:  const Color.fromARGB(255, 17, 114, 67)
          ),
          ),
        ),
      ),
    );
  }
}