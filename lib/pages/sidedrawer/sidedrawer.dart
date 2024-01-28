import 'package:carmelschool/pages/sidedrawer/widgets/drawer_cards.dart';
import 'package:carmelschool/pages/sidedrawer/widgets/drawerpath.dart';
import 'package:carmelschool/pages/sidedrawer/widgets/profilecard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.black38,
      child: Container(
        color: Colors.transparent,
        child: CustomPaint(
          painter: DrawerPath(),
          child:  Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const ProfileCard(),
              const SizedBox(
                height: 75,
              ),
              const DrawerCards(

                title: "Edit Profile",
                icon: "assets/images/editprofile.png",
              ),
              const SizedBox(
                height: 20,
              ),
              const DrawerCards(
                title: "My Attendance",
                icon: "assets/images/dob.png",
              ),
              const SizedBox(
                height: 20,
              ),
              const DrawerCards(
                title: "About Us",
                icon: "assets/images/aboutus.png",
              ),
              const SizedBox(
                height: 20,
              ),
              const DrawerCards(
                title: "Privacy Policy",
                icon: "assets/images/privacy.png",
              ),
              const SizedBox(
                height: 20,
              ), const DrawerCards(
                title: "Terms of Service",
                icon: "assets/images/tos.png",
              ),


              Expanded(child: SizedBox(),),
              const DrawerCards(
                isChangeColor: true,
                title: "Logout",
                icon: "assets/images/logout.png",
              ),

              SizedBox(height: 15,),
              const DrawerCards(
                isChangeColor: true,
                title: "Delete Account",
                icon: "assets/images/delete.png",
              ),
              SizedBox(height: 60,),
            ],
          ),
        ),
      ),
    );
  }
}
