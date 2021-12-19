// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:free_tinder/screens/nearby_user.dart';
import '../constants/colors.dart';
import '../constants/variables.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //  final _key = _key;
  final spinkit = SpinKitPumpingHeart(
    
    itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.red,
        ),
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryColor,
        title: const Text(Names.appBarHeading),
      ),
      body: Center(
        child: PageView(
          scrollDirection: Axis.horizontal,
          dragStartBehavior: DragStartBehavior.start,
          children: [
            NearByUsers(),
            NearByUsers(),
            NearByUsers(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child:const Icon(
                            Icons.favorite,
                            size: 55,
                            color: Colors.green,
                          ),
        // child: spinkit,
        backgroundColor: Colors.transparent, elevation: 0,
        splashColor: Colors.red,
        onPressed: () {},

        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: MyColors.primaryColor,
        icons: NavIcons.iconList,
        activeIndex: 1,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) {
          switch (index) {
            case 1:
              break;
            default:
              Navigator.of(context).pushNamed(
                HomeScreen.routeName,
                // arguments: product.id
              );
          }
        },
        //other params
      ),
      //floatingActionButton: FloatingActionButton(onPressed: (){},),
    );
  }
}
