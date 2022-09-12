import 'package:facebook_clone/models/suggestion_model.dart';
import 'package:facebook_clone/styles/ThemeColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/notification_model.dart';
import '../styles/ThemeTexts.dart';

List<UserSuggestion> list = [
  UserSuggestion("Ryan Reynolds", "assets/profile.png", "3 mutual friends"),
  UserSuggestion("Ryan Reynolds", "assets/profile.png", "3 mutual friends"),
  UserSuggestion("Professor Xavier", "assets/profile.png", "12 mutual friends"),
  UserSuggestion("Pepper Potts", "assets/profile.png", "112 mutual friends"),
  UserSuggestion("Wanda Maximoff", "assets/profile.png", "4 mutual friends"),

  UserSuggestion("Wanda Maximoff", "assets/profile.png", "4 mutual friends"),
  UserSuggestion("Wanda Maximoff", "assets/profile.png", "4 mutual friends"),
  UserSuggestion("Wanda Maximoff", "assets/profile.png", "4 mutual friends"),
  UserSuggestion("Wanda Maximoff", "assets/profile.png", "4 mutual friends"),
  UserSuggestion("Wanda Maximoff", "assets/profile.png", "4 mutual friends"),
  UserSuggestion("Wanda Maximoff", "assets/profile.png", "4 mutual friends"),
];

class RequestsWidget extends StatefulWidget {
  const RequestsWidget({Key? key}) : super(key: key);

  @override
  State<RequestsWidget> createState() => _RequestsWidgetState();
}

class _RequestsWidgetState extends State<RequestsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(padding: EdgeInsets.all(10), child: Row(children: [
          TextButton(onPressed: () {}, child: Text("Suggestions", style: TextStyle(color: Colors.black, fontSize: 14)), style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    // side: BorderSide(color: Colors.black)
                )
            ),
            backgroundColor: MaterialStateProperty.all(const Color(0xffdcdcdc)),
          )),
          SizedBox(width: 10,),
          TextButton(onPressed: () {}, child: Text("Your Friends", style: TextStyle(color: Colors.black, fontSize: 14)), style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  // side: BorderSide(color: Colors.black)
                )
            ),
            backgroundColor: MaterialStateProperty.all(const Color(0xffdcdcdc)),
          ))
        ],),),
        Expanded(child: ListView.builder(
            itemCount: list.length,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final item = list[index];

              if(index==0) {
                return Padding(padding: EdgeInsets.all(12), child: Row(children: [
                  Expanded(child: Text("Friend Requests (${list.length})" , style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),)),

                ],),);
              }
              if(index<5) {
                return Card(margin: const EdgeInsets.fromLTRB(2, 1, 2, 1), elevation: 0.0, color: ThemeColors.blueNotification, child: Container(margin: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(crossAxisAlignment: CrossAxisAlignment.start,children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset(item.sImage, height: 80, width: 80, fit: BoxFit.cover,),),
                        const SizedBox(width: 8,),
                        Expanded(child: Column(children: [
                          Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text(item.sName, style: requestTitle(), textAlign: TextAlign.start,),)),
                            Text("2d", style: notificationTime(), textAlign: TextAlign.start,)
                          ],),
                          Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text(item.sMutual, style: notificationTime(), textAlign: TextAlign.start,),))],),

                          Row(children: [
                            Expanded(child: TextButton(onPressed: () {}, child: Center(child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center ,children: [
                              Text("Confirm", style: TextStyle(color: Colors.white, fontSize: 14),)
                            ],),), style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(const Color(0xff1773EA)),
                            ),)),
                            SizedBox(width: 8,),
                            Expanded(child: TextButton(onPressed: () {}, child: Text("Delete", style: TextStyle(color: Colors.black, fontSize: 14)), style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(const Color(0xffdcdcdc)),
                            )))
                          ],)
                        ],)),
                      ],)

                      ,
                      //Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8), child: Text(item.nBody, style: AppTheme.nbodyText, textAlign: TextAlign.start,),))],)
                    ],
                  ),),);
              }
              else if(index==5) {
                return Padding(padding: EdgeInsets.all(12), child: Row(children: [
                  Expanded(child: Text("Suggestions" , style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),)),

                ],),);
              }
              return Card(margin: const EdgeInsets.fromLTRB(2, 1, 2, 1), elevation: 0.0, color: ThemeColors.blueNotification, child: Container(margin: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(item.sImage, height: 80, width: 80, fit: BoxFit.cover,),),
                      const SizedBox(width: 8,),
                      Expanded(child: Column(children: [
                        Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text(item.sName, style: requestTitle(), textAlign: TextAlign.start,),)),
                        ],),
                        Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text(item.sMutual, style: notificationTime(), textAlign: TextAlign.start,),))],),

                        Row(children: [
                          Expanded(child: TextButton(onPressed: () {}, child: Center(child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center ,children: [
                            Text("Add Friend", style: TextStyle(color: Colors.white, fontSize: 14),)
                          ],),), style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(const Color(0xff1773EA)),
                          ),)),
                          SizedBox(width: 8,),
                          Expanded(child: TextButton(onPressed: () {}, child: Text("Remove", style: TextStyle(color: Colors.black, fontSize: 14)), style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(const Color(0xffdcdcdc)),
                          )))
                        ],)
                      ],)),
                    ],)

                    ,
                    //Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 8, 0, 8), child: Text(item.nBody, style: AppTheme.nbodyText, textAlign: TextAlign.start,),))],)
                  ],
                ),),);
            }))
      ],),
    );
  }
}
