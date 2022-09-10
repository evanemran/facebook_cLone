import 'package:facebook_clone/models/story_model.dart';
import 'package:flutter/material.dart';

import '../styles/ThemeColors.dart';

class StoryWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StoryWidgetState();

  const StoryWidget({
    Key? key, required this.story,
  }) : super(key: key);

  final UserStory story;

}

class _StoryWidgetState extends State<StoryWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 180,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(widget.story.sImage), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        child: Column(
          children: [
            Expanded(child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.fromLTRB(8, 8, 0, 0), child: CircleAvatar(backgroundColor: ThemeColors.blueAccent, radius: 18, child: Image.asset("assets/profile.png", height: 30, width: 30, fit: BoxFit.fill,)),)],)),
            Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(8, 0, 0, 8), child: Text(widget.story.sUserName, style: const TextStyle(color: Colors.white), textAlign: TextAlign.start,),))],),
          ],
        )
    );
  }

}