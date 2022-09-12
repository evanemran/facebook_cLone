import 'package:facebook_clone/styles/ThemeColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/suggestion_model.dart';
import '../styles/ThemeTexts.dart';

List<UserSuggestion> list = [
UserSuggestion("Bruce Wayne", "assets/wayne.jpg", "12 mutual friends"),
UserSuggestion("Bruce Banner", "assets/banner.jpeg", "12 mutual friends"),
UserSuggestion("Natasha Romanoff", "assets/nat.jpg", "12 mutual friends"),
UserSuggestion("Diana Prince", "assets/diana.jpg", "12 mutual friends"),
UserSuggestion("Bruce Wayne", "assets/wayne.jpg", "12 mutual friends"),
UserSuggestion("Bruce Wayne", "assets/wayne.jpg", "12 mutual friends"),
];

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 184) / 2;
    final double itemWidth = size.width / 2;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      child: Column(children: [Padding(padding: EdgeInsets.all(20), child: Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
        Container(
          height: 300,
          color: Colors.white,
          width: double.infinity,
          child: Stack(alignment: Alignment.topCenter ,children: [
            Stack(children: [
              Image.asset("assets/image.png", height: 220, width: double.infinity, fit: BoxFit.cover,),
              Positioned(bottom: 0, right: 0, child: Transform.translate(offset: Offset(-10, -15), child: makeCamera(),))
            ],),
            Positioned(bottom: 0 ,child: Stack(children: [
              CircleAvatar(radius: 80 ,backgroundColor: Colors.white, child: ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset("assets/stark.jpg", height: 150, width: 150, fit: BoxFit.cover),),),
              Positioned(bottom: 0, right: 0, child: Transform.translate(offset: Offset(0, -15), child: makeCamera(),))
            ],))
          ],),
        ),
        SizedBox(height: 10,),
        Text("Tony Stark", style: profileTitle(),),
        SizedBox(height: 10,),
        Text("Genius, Billionaire, Playboy, Philanthropist", style: profileBio(),),

        SizedBox(height: 10,),
        Row(children: [
          Expanded(child: TextButton(onPressed: () {}, child: Center(child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center ,children: [
            Icon(Icons.add_circle, size: 18, color: Colors.white,),
            SizedBox(width: 8,),
            Text("Add to Story", style: TextStyle(color: Colors.white, fontSize: 14),)
          ],),), style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xff1773EA)),
          ),)),
          SizedBox(width: 8,),
          Expanded(child: TextButton(onPressed: () {}, child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.edit,size: 18, color: Colors.black,),
                SizedBox(width: 8,),
                Text("Edit Profile", style: TextStyle(color: Colors.black, fontSize: 14)),
              ],
            ),
          ), style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(const Color(0xffdcdcdc)),
          )))
        ],),

        SizedBox(height: 20,),
        Row(
          children: [Image.asset("assets/work.png", color: Colors.grey, width: 20, height: 20,), SizedBox(width: 8,) ,Expanded(child: RichText(text: TextSpan(children: [
            TextSpan(text: 'CEO at ', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black87, fontSize: 18)),
            TextSpan(text: 'Stark Industries', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18))
          ])))],),
        SizedBox(height: 15,),
        Row(
          children: [Image.asset("assets/work.png", color: Colors.grey, width: 20, height: 20,), SizedBox(width: 8,) ,Expanded(child: RichText(text: TextSpan(children: [
            TextSpan(text: 'Consultant at ', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black87, fontSize: 18)),
            TextSpan(text: 'S.H.I.E.L.D', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18))
          ])))],),


        //study
        SizedBox(height: 15,),
        Row(
          children: [Image.asset("assets/study.png", color: Colors.grey, width: 20, height: 20,), SizedBox(width: 8,) ,Expanded(child: RichText(text: TextSpan(children: [
            TextSpan(text: 'Studied at ', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black87, fontSize: 18)),
            TextSpan(text: 'MIT', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18))
          ])))],),


        SizedBox(height: 15,),
        Row(
          children: [Image.asset("assets/house.png", color: Colors.grey, width: 20, height: 20,), SizedBox(width: 8,) ,Expanded(child: RichText(text: TextSpan(children: [
            TextSpan(text: 'Lives in ', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black87, fontSize: 18)),
            TextSpan(text: '200 Park Avenue, Midtown Manhattan.', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18))
          ])))],),
        SizedBox(height: 15,),
        Row(
          children: [Image.asset("assets/place.png", color: Colors.grey, width: 20, height: 20,), SizedBox(width: 8,) ,Expanded(child: RichText(text: TextSpan(children: [
            TextSpan(text: 'From  ', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black87, fontSize: 18)),
            TextSpan(text: 'New York City, USA,', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18))
          ])))],),


        //relationship
        SizedBox(height: 15,),
        Row(
          children: [Image.asset("assets/heart.png", color: Colors.grey, width: 20, height: 20,), SizedBox(width: 8,) ,Expanded(child: RichText(text: TextSpan(children: [
            TextSpan(text: 'In a Relationship with  ', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black87, fontSize: 18)),
            TextSpan(text: 'Pepper Potts', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18))
          ])))],),

        SizedBox(height: 15,),
        Row(
          children: [Image.asset("assets/followed.png", color: Colors.grey, width: 20, height: 20,), SizedBox(width: 8,) ,Expanded(child: RichText(text: TextSpan(children: [
            TextSpan(text: 'Followed by 87,700,456 people', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black87, fontSize: 18)),
            TextSpan(text: '', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18))
          ])))],),
        SizedBox(height: 15,),
        Row(
          children: [Image.asset("assets/instagram.png", color: Colors.grey, width: 20, height: 20,), SizedBox(width: 8,) ,Expanded(child: RichText(text: TextSpan(children: [
            TextSpan(text: 'tony_stark', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black87, fontSize: 18)),
            TextSpan(text: '', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18))
          ])))],),


        SizedBox(height: 20,),
        Row(children: [Expanded(child: Text("Friends", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),))],),
        Row(children: [Expanded(child: Text("156 Friends", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal),))],),
        SizedBox(height: 10,),
        Container(
          color: Colors.white,
          margin: EdgeInsets.only(bottom: 0.0),
          child: GridView.count(
            crossAxisCount: 3,
            childAspectRatio: (itemWidth / itemHeight),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            // Generate 100 widgets that display their index in the List.
            children: List.generate(list.length, (index) {
              return Center(
                child: Container(
                  width: size.width / 3,
                  height: 150,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.asset(list[index].sImage, height: 100, width: 110, fit: BoxFit.cover,),
                      SizedBox(height: 8.0),
                      Row(children: [Expanded(child: Text(list[index].sName,
                        style: const TextStyle(fontSize: 14.0,color: Colors.black, fontWeight: FontWeight.bold),))],),
                    ],
                  ),
                )

                // child: MenuWidget(title: homeMenuList[index].title, image: homeMenuList[index].icon),
              );
            }),
          ),
        ),
      ],),)],),);
  }
}

Widget makeCamera() {
  return Container(
    width: 32,
    height: 32,
    decoration: BoxDecoration(
        color: ThemeColors.liteGrey,
        shape: BoxShape.circle,
        border: Border.all(color: ThemeColors.liteGrey)
    ),
    child: Center(
      child: Image.asset("assets/camera.png", width: 18, height: 18,),
    ),
  );
}
