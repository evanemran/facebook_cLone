import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarketPlaceWidget extends StatefulWidget {
  const MarketPlaceWidget({Key? key}) : super(key: key);

  @override
  State<MarketPlaceWidget> createState() => _MarketPlaceWidgetState();
}

class _MarketPlaceWidgetState extends State<MarketPlaceWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          Row(children: [
            Expanded(child: Text("Marketplace", style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),)),
            CircleAvatar(radius: 20,backgroundColor: Colors.black12, child: IconButton(icon: Image.asset("assets/person.png", height: 20, width: 20,), onPressed: () {  },),),
            SizedBox(width: 10,),
            CircleAvatar(radius: 20,backgroundColor: Colors.black12, child: IconButton(icon: Image.asset("assets/search.png", height: 20, width: 20,), onPressed: () {  },),)
          ],),

          SizedBox(height: 10,),



        ],),
      ),
    );
  }
}
