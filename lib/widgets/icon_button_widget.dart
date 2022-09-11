import 'package:facebook_clone/models/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconButtonWidget extends StatefulWidget {
  const IconButtonWidget({Key? key, required this.button}) : super(key: key);

  final Button button;

  @override
  State<IconButtonWidget> createState() => _IconButtonWidgetState();
}

class _IconButtonWidgetState extends State<IconButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {

    }, child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(widget.button.icon, height: 22, width: 22, color: Colors.black54,),
        const SizedBox(width: 8,),
        Text(widget.button.title, style: const TextStyle(color: Colors.black54, fontSize: 14, fontStyle: FontStyle.normal),)
      ],
    ));
  }
}
