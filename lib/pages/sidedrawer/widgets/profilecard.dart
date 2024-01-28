import 'package:flutter/material.dart';


class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      width:double.infinity,
      height: 68,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          const SizedBox(width: 10,),
          Container(

            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/images/profile.png",
                width: 48,
                height: 48,
              ),
            ),


          ),


          const SizedBox(width: 20,),


          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: [


              Text(
                  "Esther Howard",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  )
              ),

              Text(
                  "xyzabc@gmail.com",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  )
              )
            ],
          )
        ],
      ),
    );
  }
}
