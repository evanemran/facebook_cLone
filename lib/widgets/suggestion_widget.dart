import 'package:facebook_clone/models/story_model.dart';
import 'package:facebook_clone/models/suggestion_model.dart';
import 'package:flutter/material.dart';

import '../styles/ThemeColors.dart';

class SuggestionWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SuggestionWidgetState();

  const SuggestionWidget({
    Key? key, required this.story,
  }) : super(key: key);

  final UserSuggestion story;

}

class _SuggestionWidgetState extends State<SuggestionWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.white,
      shadowColor: Colors.black,
      margin: EdgeInsets.all(2),
      child: Container(width: 240, padding: EdgeInsets.all(4), child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(widget.story.sImage, width: double.infinity, height: 200, fit: BoxFit.cover,),
          Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.fromLTRB(8, 8, 8, 8), child: Text(widget.story.sName, style: TextStyle(color: Colors.black87, fontSize: 14, fontWeight: FontWeight.bold),),)],),
          Row(children: [Expanded(child: Padding(padding: EdgeInsets.fromLTRB(8, 0, 0, 8), child: Text(widget.story.sMutual, style: const TextStyle(color: Colors.black87, fontSize: 12), textAlign: TextAlign.start,),))],),
          Padding(padding: EdgeInsets.fromLTRB(4, 2, 4, 0), child: Row(children: [
            Expanded(child: TextButton(onPressed: () {}, child: Text("Add Friend", style: TextStyle(color: Colors.white, fontSize: 14),), style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(const Color(0xff1773EA)),
            ),)),
            SizedBox(width: 8,),
            TextButton(onPressed: () {}, child: Text("Remove", style: TextStyle(color: Colors.black, fontSize: 14)), style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(const Color(0xffdcdcdc)),
            ))
          ],),),
        ],
      ),),
    );
  }

}