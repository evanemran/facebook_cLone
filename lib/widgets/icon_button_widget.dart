import 'package:facebook_clone/models/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconButtonWidget extends StatefulWidget {
  const IconButtonWidget({Key? key, required this.button}) : super(key: key);

  final Button button;

  @override
  State<IconButtonWidget> createState() => _IconButtnWidgetState();
}

class _IconButtnWidgetState extends State<IconButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(widget.button.icon, height: 22, width: 22,),
        const SizedBox(width: 8,),
        Text(widget.button.title, style: const TextStyle(color: Colors.black87, fontSize: 14, fontStyle: FontStyle.normal),)
      ],
    );
  }
}
