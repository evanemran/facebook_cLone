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
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  "Marketplace",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black12,
                  child: IconButton(
                    icon: Image.asset(
                      "assets/person.png",
                      height: 20,
                      width: 20,
                    ),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black12,
                  child: IconButton(
                    icon: Image.asset(
                      "assets/search.png",
                      height: 20,
                      width: 20,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(const Color(0xffdcdcdc)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.black12)))),
                  onPressed: () {}, child: Center(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [Icon(Icons.edit_calendar_sharp, color: Colors.black,), SizedBox(width: 8,) ,Text("Sell", style: TextStyle(color: Colors.black, fontSize: 16),)],),),
                )),
                SizedBox(width: 8,),
                Expanded(
                    child: TextButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(const Color(0xffdcdcdc)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(color: Colors.black12)))),
                      onPressed: () {}, child: Center(child: Row(
                      mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [Icon(Icons.list, color: Colors.black,), SizedBox(width: 8,) ,Text("Categories", style: TextStyle(color: Colors.black, fontSize: 16),)],),),
                    ))
              ],
            ),

            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              shrinkWrap: true,
              children: List.generate(20, (index) {
                return Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://i.guim.co.uk/img/media/2ce8db064eabb9e22a69cc45a9b6d4e10d595f06/392_612_4171_2503/master/4171.jpg?width=465&quality=85&dpr=1&s=none'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius:
                      BorderRadius.all(Radius.circular(4.0),),
                    ),
                  ),
                );
              },),
            )
          ],
        ),
      ),
    );
  }
}
