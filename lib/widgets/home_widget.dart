import 'package:facebook_clone/models/story_model.dart';
import 'package:facebook_clone/styles/ThemeColors.dart';
import 'package:facebook_clone/widgets/status_widget.dart';
import 'package:facebook_clone/widgets/story_container_widget.dart';
import 'package:facebook_clone/widgets/story_widget.dart';
import 'package:flutter/material.dart';

import '../models/status_model.dart';
import '../models/suggestion_model.dart';

List<UserSuggestion> suggestList = [
  UserSuggestion("Bruce Wayne", "assets/av_three.png", "12"),
  UserSuggestion("Bruce Wayne", "assets/av_three.png", "12"),
  UserSuggestion("Bruce Wayne", "assets/av_three.png", "12"),
  UserSuggestion("Bruce Wayne", "assets/av_three.png", "12"),
  UserSuggestion("Bruce Wayne", "assets/av_three.png", "12"),
  UserSuggestion("Bruce Wayne", "assets/av_three.png", "12"),
];

List<Object> list = [
  UserStatus("Evan Emran", "12:45 AM", "assets/profile.png", "Hey there, I am using Fakebook. Lmao!", "", 69, 6, 9),
  UserStatus("Tony Stark", "07:12 AM", "assets/profile.png", "I know it's not a perfect world. But It's the only one we got.", "assets/image.png", 3000, 6, 9),
  UserStatus("Loki", "12:45 AM", "assets/profile.png", "Kneeel", "", 1, 1, 1),
  UserStatus("Bruce Banner", "12:45 AM", "assets/profile.png", "That's my secret cap! I am always angry...", "", 21, 6, 1),

  suggestList,

  UserStatus("Loki", "12:45 AM", "assets/profile.png", "Kneeel", "", 1, 1, 1),
  UserStatus("Loki", "12:45 AM", "assets/profile.png", "Kneeel", "", 1, 1, 1),
  UserStatus("Loki", "12:45 AM", "assets/profile.png", "Kneeel", "", 1, 1, 1),
];


class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<StatefulWidget> createState() => _HomeWidgetState();

}
class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      child: Column(children: [
        Row(children: [
          const SizedBox(width: 10,),
          CircleAvatar(backgroundColor: ThemeColors.blueAccent, radius: 20, child: Image.asset("assets/profile.png", height: 38, width: 38, fit: BoxFit.fill,),),
          Expanded(child: Container(
            margin: EdgeInsets.fromLTRB(10,10,10,10),
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                    color: Colors.black45,
                    width: 1
                ),
                borderRadius: const BorderRadius.all(Radius.circular(20))
            ),
            child: Center(child: Row(children: const [SizedBox(width: 20,), Expanded(child: Text("What's on your mind?", style: TextStyle(color: Colors.black45, fontSize: 18), textAlign: TextAlign.start,))],),),),),
        ],),

        StoryContainer(),

        ListView.builder(
          itemCount: list.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final item = list[index];

            if(item.runtimeType == UserStatus) {
              return StatusWidget(status: item as UserStatus,);
            }
            else {
              return Text("N/A");
            }
          },
        )
      ],),
    );
  }

}