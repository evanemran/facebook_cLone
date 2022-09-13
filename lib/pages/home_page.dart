import 'package:facebook_clone/models/status_model.dart';
import 'package:facebook_clone/models/suggestion_model.dart';
import 'package:facebook_clone/widgets/home_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../styles/ThemeColors.dart';
import '../widgets/marketplace_widget.dart';
import '../widgets/menu_widget.dart';
import '../widgets/notification_widget.dart';
import '../widgets/profile_widget.dart';
import '../widgets/requests_widget.dart';
import '../widgets/status_widget.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.white,

            // Status bar brightness (optional)
            statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          title: Text(widget.title, style: const TextStyle(color: ThemeColors.blueAccent, fontWeight: FontWeight.bold, fontSize: 30),),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0, right: 10.0),
              child: CircleAvatar(radius: 20,backgroundColor: Colors.black12, child: IconButton(icon: Image.asset("assets/search.png", height: 20, width: 20,), onPressed: () {  },),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0, right: 12.0),
              child: CircleAvatar(radius: 20,backgroundColor: Colors.black12, child: IconButton(icon: Image.asset("assets/messenger.png", height: 20, width: 20,), onPressed: () {  },),),
            )
          ],

          bottom: TabBar(
            onTap: (index) {
              _selectedTab = index;
              setState(() {

              });
            },
            indicatorColor: ThemeColors.blueAccent,
            labelColor: ThemeColors.blueAccent,
            unselectedLabelColor: Colors.black87,
            tabs: [
              Tab(child: _selectedTab == 0 ? ImageIcon(AssetImage("assets/home.png"), color: ThemeColors.blueAccent,) : ImageIcon(AssetImage("assets/home_unselected.png"), color: Colors.black87,),),
              Tab(child: _selectedTab == 1 ? Stack(children: [
                ImageIcon(AssetImage("assets/friends.png"), color: ThemeColors.blueAccent,),
                Transform.translate(
                    offset: Offset(12,0),
                    child: Positioned(right: 0, top: 0, child: makeNotification("4"))
                ),
              ],) : Stack(children: [
                ImageIcon(AssetImage("assets/requests.png"), color: Colors.black87,),
                Transform.translate(
                    offset: Offset(12,0),
                    child: Positioned(right: 0, top: 0, child: makeNotification("4"))
                ),
              ],),),
              Tab(child: _selectedTab == 2 ? ImageIcon(AssetImage("assets/user_selected.png"), color: ThemeColors.blueAccent,) : ImageIcon(AssetImage("assets/user.png"), color: Colors.black87,),),
              Tab(child: _selectedTab == 3 ? ImageIcon(AssetImage("assets/market.png"), color: ThemeColors.blueAccent,) : ImageIcon(AssetImage("assets/market.png"), color: Colors.black87,),),
              Tab(child: _selectedTab == 4 ? Stack(children: [
                ImageIcon(AssetImage("assets/bell.png"), color: ThemeColors.blueAccent,),
                Transform.translate(
                    offset: Offset(12,0),
                    child: Positioned(right: 0, top: 0, child: makeNotification("3"))
                ),
              ],) : Stack(children: [
                ImageIcon(AssetImage("assets/notification.png"), color: Colors.black87,),
                Transform.translate(
                    offset: Offset(12,0),
                    child: Positioned(right: 0, top: 0, child: makeNotification("3"))
                ),
              ],),),
              Tab(child: _selectedTab == 5 ? ImageIcon(AssetImage("assets/menu.png"), color: ThemeColors.blueAccent,) : ImageIcon(AssetImage("assets/menu.png"), color: Colors.black87,),),
            ],
          ),
        ),
        body: const TabBarView(
          //to restrict unwanted swipes
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomeWidget(),
            RequestsWidget(),
            ProfileWidget(),
            MarketPlaceWidget(),
            NotificationWidget(),
            MenuWidget(),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget makeNotification(String count) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Text(count.toString(),style: TextStyle(color: Colors.white, fontSize: 12),),
      ),
    );
  }
}