import 'package:facebook_clone/styles/ThemeColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/notification_model.dart';
import '../styles/ThemeTexts.dart';

List<Notifications> list = [
  Notifications("assets/banner.jpeg", "Bruce Banner and 112 others liked your post.", "Few seconds ago", "assets/liked.png"),
  Notifications("assets/stark.jpg", "Tony Stark and 2 others reacted your photo.", "Few seconds ago", "assets/haha.png"),
  Notifications("assets/profile.png", "Bruce Banner and 112 others loved your post.", "Few seconds ago", "assets/love.png"),
  Notifications("assets/profile.png", "Bruce Banner and 112 others liked your post.", "Few seconds ago", "assets/liked.png"),
  Notifications("assets/profile.png", "Bruce Banner and 112 others liked your post.", "Few seconds ago", "assets/liked.png"),
  Notifications("assets/profile.png", "Bruce Banner and 112 others liked your post.", "Few seconds ago", "assets/liked.png"),
  Notifications("assets/profile.png", "Bruce Banner and 112 others liked your post.", "Few seconds ago", "assets/liked.png"),
  Notifications("assets/profile.png", "Bruce Banner and 112 others liked your post.", "Few seconds ago", "assets/liked.png"),
  Notifications("assets/profile.png", "Bruce Banner and 112 others liked your post.", "Few seconds ago", "assets/liked.png"),
  Notifications("assets/profile.png", "Bruce Banner and 12 others liked your post.", "Few seconds ago", "assets/liked.png"),
  Notifications("assets/profile.png", "Bruce Banner and 12 others liked your post.", "Few seconds ago", "assets/liked.png"),
  Notifications("assets/profile.png", "Bruce Banner and 12 others liked your post.", "Few seconds ago", "assets/liked.png"),
  Notifications("assets/profile.png", "Bruce Banner and 12 others liked your post.", "Few seconds ago", "assets/liked.png"),
  Notifications("assets/profile.png", "Bruce Banner and 12 others liked your post.", "Few seconds ago", "assets/liked.png"),
];

class NotificationWidget extends StatefulWidget {
  const NotificationWidget({Key? key}) : super(key: key);

  @override
  State<NotificationWidget> createState() => _NotificationWidgetState();
}

class _NotificationWidgetState extends State<NotificationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(padding: EdgeInsets.all(12), child: Row(children: [
          Expanded(child: Text("Notifications", style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),)),
          CircleAvatar(radius: 20,backgroundColor: Colors.black12, child: IconButton(icon: Image.asset("assets/search.png", height: 20, width: 20,), onPressed: () {  },),)
        ],),),
        Expanded(child: ListView.builder(
            itemCount: list.length,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final item = list[index];

              return Card(margin: const EdgeInsets.fromLTRB(2, 1, 2, 1), elevation: 0.0, color: ThemeColors.blueNotification, child: Container(margin: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(crossAxisAlignment: CrossAxisAlignment.start,children: [
                      Container(width: 60, height: 60, color: ThemeColors.blueNotification, child: Center(child: Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: Image.asset(item.nImage, height: 60, width: 60, fit: BoxFit.cover,),),
                        Positioned(bottom: 0, right: 0 ,child: Image.asset(item.nIcon, height: 18, width: 18, fit: BoxFit.cover,),)
                      ],),),),
                      const SizedBox(width: 8,),
                      Expanded(child: Column(children: [
                        Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text(item.nBody, style: notificationBody(), textAlign: TextAlign.start,),)),
                        ],),
                        Row(children: [Expanded(child: Padding(padding: const EdgeInsets.fromLTRB(0, 2, 0, 2), child: Text(item.nTime, style: notificationTime(), textAlign: TextAlign.start,),))],),
                      ],)),
                      const SizedBox(width: 8,),
                      const Icon(Icons.more_horiz, color: Colors.black87,)
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
