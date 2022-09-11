import 'package:facebook_clone/models/button.dart';
import 'package:facebook_clone/models/shared_model.dart';
import 'package:facebook_clone/models/status_model.dart';
import 'package:facebook_clone/widgets/icon_button_widget.dart';
import 'package:flutter/material.dart';

class SharedWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SharedWidgetState();

  const SharedWidget({Key? key, required this.status}) : super(key: key);

  final SharedStatus status;
}

class _SharedWidgetState extends State<SharedWidget> {
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    visibility = widget.status.status.userStatusImage.isEmpty ? false : true;
    return Card(margin: EdgeInsets.fromLTRB(4,4,4,0), shadowColor: Colors.white, elevation: 4.0, color: Colors.white, child: Container(
      margin: EdgeInsets.fromLTRB(4,4,4,0),child: Column(
      children: [
        Padding(padding: EdgeInsets.all(4.0), child: Row(children: [
          Image.asset(widget.status.sImage, height: 34, width: 34, fit: BoxFit.fill),
          SizedBox(width: 8,),
          Expanded(child: Column(children: [
            Row(children: [Text(widget.status.sName, style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold), textAlign: TextAlign.start,), Expanded(child: Text(" shared a post", style: TextStyle(color: Colors.black54, fontSize: 14.0, fontWeight: FontWeight.normal), textAlign: TextAlign.start,))],),
            Row(children: [Expanded(child: Text(widget.status.sTime, style: TextStyle(color: Colors.black45, fontSize: 12.0, fontWeight: FontWeight.normal), textAlign: TextAlign.start,))],),
          ],)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz, color: Colors.black45,),)
        ],),),
        SizedBox(height: 8,),


        Card(margin: EdgeInsets.fromLTRB(4,4,4,0), shadowColor: Colors.white, elevation: 4.0, color: Colors.white, child: Container(
          margin: EdgeInsets.fromLTRB(4,4,4,0),child: Column(
          children: [
            Padding(padding: EdgeInsets.all(4.0), child: Row(children: [
              Image.asset(widget.status.status.userImage, height: 34, width: 34, fit: BoxFit.fill),
              SizedBox(width: 8,),
              Expanded(child: Column(children: [
                Row(children: [Expanded(child: Text(widget.status.status.userName, style: TextStyle(color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold), textAlign: TextAlign.start,))],),
                Row(children: [Expanded(child: Text(widget.status.status.postTime, style: TextStyle(color: Colors.black45, fontSize: 12.0, fontWeight: FontWeight.normal), textAlign: TextAlign.start,))],),
              ],)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz, color: Colors.black45,),)
            ],),),
            SizedBox(height: 8,),
            Padding(padding: EdgeInsets.all(8), child: Row(children: [Expanded(child: Text(widget.status.status.userStatus,style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 16.0),))],),),
            Visibility(visible: visibility ,child: Image.asset(widget.status.status.userStatusImage, height: 200, width: double.infinity, fit: BoxFit.fill,)),
            SizedBox(height: 8,),
          ],
        ),
        ),),


        SizedBox(height: 8,),
        Padding(padding: EdgeInsets.all(8), child: Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
          Image.asset("assets/liked.png", height: 18, width: 18, fit: BoxFit.fill,),
          Transform.translate(
              offset: Offset(-5, 0),
              child: Image.asset("assets/love.png", height: 18, width: 18, fit: BoxFit.fill)
          ),
          Transform.translate(
              offset: Offset(-10, 0),
              child: Image.asset("assets/haha.png", height: 18, width: 18, fit: BoxFit.fill)
          ),

          Transform.translate(
              offset: Offset(-5, 0),
              child: Text(widget.status.status.likeCount, style: TextStyle(color: Colors.black54, fontSize: 13),)
          ),

          Expanded(child: Text(widget.status.status.commentCount.toString() + " comments", style: TextStyle(color: Colors.black54, fontSize: 13), textAlign: TextAlign.end,))
        ],),),
        SizedBox(height: 10,),
        Container(width: double.infinity, color: Colors.black26, height: 1,),
        Row(children: [
          Expanded(child: IconButtonWidget(button: Button("assets/like.png", "Like"))),
          Expanded(child: IconButtonWidget(button: Button("assets/comment.png", "Comment"))),
          Expanded(child: IconButtonWidget(button: Button("assets/share.png", "Share"))),
        ],),
      ],
    ),
    ),);
  }

}