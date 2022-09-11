import 'package:facebook_clone/widgets/story_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/story_model.dart';

UserStory story1 = UserStory("assets/story_one.png", "assets/profile.png", "Evan Emran");
UserStory story2 = UserStory("assets/story_two.png", "assets/profile.png", "Evan Emran");
UserStory story3 = UserStory("assets/story_one.png", "assets/profile.png", "Evan Emran");
UserStory story4 = UserStory("assets/story_one.png", "assets/profile.png", "Evan Emran");
UserStory story5 = UserStory("assets/story_one.png", "assets/profile.png", "Evan Emran");

class StoryContainer extends StatefulWidget {
  const StoryContainer({Key? key}) : super(key: key);

  @override
  State<StoryContainer> createState() => _StoryContainerState();
}

class _StoryContainerState extends State<StoryContainer> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      margin: const EdgeInsets.only(left: 12.0, right: 12.0, bottom: 12.0, top: 12.0),
      child: SizedBox(
        // width: Size.infinite.width,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(elevation: 0, margin: EdgeInsets.all(4.0), color: Colors.white, child: StoryWidget(story: story1,),),
                  Card(elevation: 0, margin: EdgeInsets.all(4.0), color: Colors.white, child: StoryWidget(story: story2,),),
                  Card(elevation: 0, margin: EdgeInsets.all(4.0), color: Colors.white, child: StoryWidget(story: story3,),),
                  Card(elevation: 0, margin: EdgeInsets.all(4.0), color: Colors.white, child: StoryWidget(story: story4,),),
                  Card(elevation: 0, margin: EdgeInsets.all(4.0), color: Colors.white, child: StoryWidget(story: story5,),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
