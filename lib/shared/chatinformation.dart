import 'package:flutter/material.dart';
class Info_chat extends StatelessWidget {


  final TextInputType textInputTypee;

  final bool ispassword;

  final String textinbox;

  Info_chat({required this.textInputTypee,required this.ispassword,required this.textinbox});

  @override
  Widget build(BuildContext context) {
    return  Card(

      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(
                            'https://cdn4.iconfinder.com/data/icons/avatars-21/512/avatar-circle-human-female-2-1024.png'),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          bottom: 3.0,
                          end: 3.0,
                        ),
                        child: CircleAvatar(
                          radius: 7.0,
                          backgroundColor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mostafa Elgazar ',
                          style: TextStyle(
                            fontSize: 16.0,
                            //fontWeight: FontWeight.bold
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                'Hi my name is mostafa nice to chat you',
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10.0,
                              ),
                              child: Container(
                                width: 7.0,
                                height: 7.0,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                            Text('12:28 Am'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),





            ]),
          ),
        ),
      ),
    );
  }
}
