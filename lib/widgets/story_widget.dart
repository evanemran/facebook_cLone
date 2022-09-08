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
    return Scaffold(
      body: Container(
        width: 100,
        height: 160,
        color: Colors.white,
        child: Stack(
          children: [
            SizedBox(height: 160, child: Image.asset(widget.story.sImage, fit: BoxFit.fill,)),
            Positioned(bottom: 0,  child: Row(children: [Expanded(child: Text(widget.story.sUserName, style: TextStyle(color: Colors.white), textAlign: TextAlign.start,))],)),
            Positioned(top: 0,  child: Row(children: [Expanded(child: CircleAvatar(backgroundColor: ThemeColors.blueAccent, radius: 20, child: Image.asset("assets/profile.png", height: 38, width: 38, fit: BoxFit.fill,)))],))
          ],
        )


        /*child: Column(
          children: [
            SizedBox(height: 160, child: Image.asset(widget.story.sImage, fit: BoxFit.fill,)),
            const SizedBox(height: 5.0),
            Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(8,4,2,2), child: Text(title,
                style: AppTheme.offerText,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis),))],),
            Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(8,2,2,4), child: Text(vendor,
                style: AppTheme.offerVendorText,
                textAlign: TextAlign.start,
                overflow: TextOverflow.ellipsis),))],),
          ],
        ),*/
      ),
    );
  }

}