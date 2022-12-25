import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/menu.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {

  List<Menu> list = [
    Menu("Saved", "assets/bookmark.png", Colors.purple),
    Menu("Feeds", "assets/newsfeed.png", null),
    Menu("Friends", "assets/friends_menu.png", null),
    Menu("Groups", "assets/group.png", null),
    Menu("Marketplace", "assets/marketplace.png", null),
    Menu("Videos on Watch", "assets/facebook.png", null),
    Menu("Memories", "assets/quick.png", null),
    Menu("Pages", "assets/page.png", null),
    Menu("Events", "assets/calendar.png", null),
    Menu("Gaming", "assets/gamepad.png", null),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          Row(children: [
            Expanded(child: Text("Menu", style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),)),
            CircleAvatar(radius: 20,backgroundColor: Colors.black12, child: IconButton(icon: Image.asset("assets/gear.png", height: 20, width: 20,), onPressed: () {  },),),
            SizedBox(width: 10,),
            CircleAvatar(radius: 20,backgroundColor: Colors.black12, child: IconButton(icon: Image.asset("assets/search.png", height: 20, width: 20,), onPressed: () {  },),)
          ],),

          const SizedBox(height: 10,),

          Row(children: [
            CircleAvatar(radius: 25 ,backgroundColor: Colors.white, child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset("assets/stark.jpg", height: 50, width: 50, fit: BoxFit.cover),),),
            const SizedBox(width: 10,),
            Expanded(child: Column(children: [
              Row(children: const [Expanded(child: Text("Tony Stark", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),))],),
              Row(children: const [Expanded(child: Text("See your profile", style: TextStyle(color: Colors.black54, fontWeight: FontWeight.normal, fontSize: 14
              ),))],),
            ],))
          ],),

          const SizedBox(height: 10,),

          Padding(child: Row(children: [Expanded(child: Text("All Shortcuts", style: TextStyle(color: Colors.black, fontSize: 18), textAlign: TextAlign.start,))],), padding: EdgeInsets.all(8),),

          GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            shrinkWrap: true,
            children: List.generate(list.length, (index) {
              var item = list[index];
              return Card(
                elevation: 4,
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(
                    borderRadius:
                    BorderRadius.all(Radius.circular(8.0),),
                  ),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Expanded(child: Image.asset(item.icon, width: 26, height: 26, color: item.color!=null ? item.color : null,)),
                      Expanded(child: Center(child: Row(children: [Expanded(child: Text(item.title, style: const TextStyle(color: Colors.black, fontSize: 16), textAlign: TextAlign.start,),)],),))
                  ],),
                ),
              );
            },),
          ),

          Padding(padding: EdgeInsets.all(4.0),
          child: Row(
            children: [
              Expanded(child: ElevatedButton(
                onPressed: () {  },
                child: Text("See More"),
              ))
            ],
          ),)


        ],),
      ),
    );
  }
}
