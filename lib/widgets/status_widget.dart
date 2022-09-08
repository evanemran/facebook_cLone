import 'package:facebook_clone/models/status_model.dart';
import 'package:flutter/material.dart';

class StatusWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StatusWidgetState();

  const StatusWidget({Key? key, required this.status}) : super(key: key);

  final UserStatus status;
}

class _StatusWidgetState extends State<StatusWidget> {
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
    if(widget.status.userStatusImage==""){
      visibility = false;
    }else {
      visibility = true;
    }
    return Card(margin: EdgeInsets.all(8.0), elevation: 4.0, color: Colors.white, child: Container(
      margin: EdgeInsets.all(8.0),child: Column(
      children: [
        Row(children: [
          Image.asset(widget.status.userImage, height: 30, width: 30, fit: BoxFit.fill),
          SizedBox(width: 8,),
          Expanded(child: Text(widget.status.userName, style: TextStyle(color: Colors.black, fontSize: 18.0, fontWeight: FontWeight.bold), textAlign: TextAlign.start,))
        ],),
        SizedBox(height: 8,),
        Row(children: [Expanded(child: Text(widget.status.postTime, style: TextStyle(color: Colors.black87, fontSize: 14.0, fontWeight: FontWeight.normal),))],),
        SizedBox(height: 8,),
        Visibility(visible: visibility ,child: Image.asset(widget.status.userStatusImage, height: 180, width: double.infinity, fit: BoxFit.fill,)),
        SizedBox(height: 8,),
        Row(children: [Expanded(child: Text(widget.status.userStatus,style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 18.0),))],)
      ],
    ),
    ),);
  }

}