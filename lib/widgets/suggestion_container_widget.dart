import 'package:facebook_clone/models/suggestion_model.dart';
import 'package:facebook_clone/widgets/story_widget.dart';
import 'package:facebook_clone/widgets/suggestion_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/story_model.dart';

UserSuggestion one = UserSuggestion("Bruce Wayne", "assets/av_three.png", "12 mutual friends");
UserSuggestion two = UserSuggestion("Diana Prince", "assets/av_three.png", "69 mutual friends");
UserSuggestion three = UserSuggestion("Logan", "assets/av_three.png", "8 mutual friends");

class SuggestionContainer extends StatefulWidget {
  const SuggestionContainer({Key? key}) : super(key: key);

  @override
  State<SuggestionContainer> createState() => _SuggestionContainerState();
}

class _SuggestionContainerState extends State<SuggestionContainer> {
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
            Padding(padding: EdgeInsets.all(4), child: Row(children: [Expanded(child: Text("People you may know", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),))],),),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(elevation: 0, margin: EdgeInsets.all(4.0), color: Colors.white, child: SuggestionWidget(story: one,),),
                  Card(elevation: 0, margin: EdgeInsets.all(4.0), color: Colors.white, child: SuggestionWidget(story: two,),),
                  Card(elevation: 0, margin: EdgeInsets.all(4.0), color: Colors.white, child: SuggestionWidget(story: three,),),
                  Card(elevation: 0, margin: EdgeInsets.all(4.0), color: Colors.white, child: SuggestionWidget(story: one,),),
                  Card(elevation: 0, margin: EdgeInsets.all(4.0), color: Colors.white, child: SuggestionWidget(story: two,),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
