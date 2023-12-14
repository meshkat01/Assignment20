import 'package:assignment_one/page_data/all_colors.dart';
import 'package:assignment_one/page_data/all_icons.dart';
import 'package:assignment_one/pages/cart.dart';
import 'package:assignment_one/pages/categorys.dart';
import 'package:assignment_one/pages/home.dart';
import 'package:assignment_one/pages/my_account.dart';
import 'package:assignment_one/pages/staf_screen.dart';
import 'package:assignment_one/pages/wishlist.dart';
import 'package:flutter/material.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int index=0;
  List<Widget> page=[
    HomePage(),CategorisePage(),CartPage(),MyAccount(),StafDashbord(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: allColors.skyBlueColor,
        unselectedItemColor: allColors.grayLightColor,
        currentIndex: index,
        onTap: (value){
          setState(() {
              index=value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: allIcons.homeIcon, label: "Home"),
          BottomNavigationBarItem(icon: allIcons.categoryIcon, label: "Categorys"),
          BottomNavigationBarItem(icon: allIcons.cartIcon, label: "Cart"),
          BottomNavigationBarItem(icon: allIcons.myAccoutIcon, label: "Account"),
          BottomNavigationBarItem(icon: allIcons.stafdashbordIcon, label: "Dashbord"),
        ],
      ),
      body: page[index],
    );
  }
}
