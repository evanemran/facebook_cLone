import 'package:facebook_clone/models/shared_model.dart';
import 'package:facebook_clone/models/story_model.dart';
import 'package:facebook_clone/styles/ThemeColors.dart';
import 'package:facebook_clone/widgets/shared_widget.dart';
import 'package:facebook_clone/widgets/status_widget.dart';
import 'package:facebook_clone/widgets/story_container_widget.dart';
import 'package:facebook_clone/widgets/story_widget.dart';
import 'package:facebook_clone/widgets/suggestion_container_widget.dart';
import 'package:facebook_clone/widgets/suggestion_widget.dart';
import 'package:flutter/material.dart';

import '../models/status_model.dart';
import '../models/suggestion_model.dart';

List<UserSuggestion> suggestList = [
  UserSuggestion("Bruce Wayne", "assets/wayne.png", "12"),
  UserSuggestion("Bruce Wayne", "assets/av_three.png", "12"),
  UserSuggestion("Bruce Wayne", "assets/av_three.png", "12"),
  UserSuggestion("Bruce Wayne", "assets/av_three.png", "12"),
  UserSuggestion("Bruce Wayne", "assets/av_three.png", "12"),
  UserSuggestion("Bruce Wayne", "assets/av_three.png", "12"),
];

List<Object> list = [
  UserStatus("Evan Emran", "12:45 AM", "assets/profile.png", "Hey there, I am using Fakebook. Lmao!", "", "Natasha and 69 others", 6, 9),
  UserStatus("Tony Stark", "07:12 AM", "assets/stark.jpg", "I know it's not a perfect world. But It's the only one we got.", "assets/image.png", "3000", 6, 9),
  UserStatus("Natasha Romanoff", "07:12 AM", "assets/nat.jpg", "Even If There's A Small Chance We Can Undo This, I Mean, We Owe It To Everyone Not In This Room To Try.", "assets/natasha.jpg", "Bruce and 69 others", 6, 9),

  SharedStatus("assets/banner.jpeg", "Bruce Banner", "15 min ago", UserStatus("Tony Stark", "07:12 AM", "assets/profile.png", "I know it's not a perfect world. But It's the only one we got.", "assets/image.png", "Tony and 11 others", 12, 9)),
  SharedStatus("assets/banner.jpeg", "Bruce Banner", "15 min ago", UserStatus("Thanos", "11:59 PM", "assets/profile.png", "Everything needs to be balanced! I am inevitable.", "", "111", 6, 9)),

  UserStatus("Loki", "12:45 AM", "assets/profile.png", "Kneeel", "", "12", 1, 1),
  UserStatus("Bruce Banner", "12:45 AM", "assets/banner.jpeg", "That's my secret cap! I am always angry...", "", "Tony and 21 others", 6, 1),

  suggestList,

  UserStatus("Loki", "12:45 AM", "assets/profile.png", "Kneeel", "", "14", 1, 1),
  UserStatus("Loki", "12:45 AM", "assets/profile.png", "Kneeel", "", "35", 1, 1),
  UserStatus("Loki", "12:45 AM", "assets/profile.png", "Kneeel", "", "Heimdall and 2 others", 1, 1),
];


class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<StatefulWidget> createState() => _HomeWidgetState();

}
class _HomeWidgetState extends State<HomeWidget> {

  FutureBuilder<Widget> loadWidget() {
    return FutureBuilder<Widget>(
        future: getWidget(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done){
            return snapshot.data as Widget;
          }
          else {
            return Center(child: CircularProgressIndicator(color: ThemeColors.blueAccent,),);
          }
        });
  }

  Future<Widget> getWidget() async {
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
            else if(item.runtimeType == List<UserSuggestion>) {
              return SuggestionContainer();
            }
            else if(item.runtimeType == SharedStatus) {
              return SharedWidget(status: item as SharedStatus);
            }
            else {
              return Text("N/A");
            }
          },
        )
      ],),
    );
  }

  @override
  Widget build(BuildContext context) {
    return loadWidget();
  }

}