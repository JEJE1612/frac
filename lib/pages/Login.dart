
import 'package:flutter/material.dart';
import 'package:frac/pages/ForgetPassword.dart';
import 'package:frac/pages/Home.dart';
import 'package:frac/shared/Mytextfield.dart';
import 'package:frac/shared/colors.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255,247, 247, 247),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                  radius: 150,
                  backgroundImage: AssetImage("images/collage2.jpg")),
              const SizedBox(height: 33,),
              const Text("FCI Community",style: TextStyle(fontSize: 20,color: Colors.black),),
              const SizedBox(height: 33,),

              // Mytextfield(
              //   textInputTypee:TextInputType.emailAddress,
              //   ispassword:false,
              //   textinbox:"Enter Your User Name ",
              // ),
            //  const SizedBox(height: 33,),
              Mytextfield(
                textInputTypee:TextInputType.text,
                ispassword:false,
                textinbox:"Enter Your Email Academy",),
              const SizedBox(height: 33,),
              // Mytextfield(
              //   textInputTypee:TextInputType.emailAddress,
              //   ispassword:true,
              //   textinbox:"Enter Your National ID ",
              // ),
              // const SizedBox(height: 33,),
              Mytextfield(
                textInputTypee:TextInputType.emailAddress,
                ispassword:true,
                textinbox:"Enter Your Password ",
              ),
              const SizedBox(height: 33,),

              ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(BTNgreen),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                ),
                child: const Text("Log in", style: TextStyle(fontSize: 20),),
              ),
              const SizedBox(height: 22,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Do You Forget Password ?  ",style: TextStyle(fontSize: 15),),
                  TextButton(  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgetPassword(),
                      ),
                    );
                  }, child:const Text('Click Here', style: TextStyle(color: Colors.black,fontSize: 15)),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
