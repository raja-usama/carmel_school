import 'package:carmelschool/constants/color.dart';
import 'package:carmelschool/widgets/appbar.dart';
import 'package:flutter/material.dart';


class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                width: double.infinity,
                height: 300,
                padding: const EdgeInsets.all(16.0),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [

                  ],
                ),
              );
            },
          );
        },
        backgroundColor: blue,
        child: const Icon(Icons.add,color: Colors.white,size: 40,weight: 20,),
      ),
      backgroundColor: bgColor,
      
      body: Column(
        children: [
          
          const MyAppBar(title: "Reports"),
          const SizedBox(height: 20,),

          Expanded(
            child: ListView.builder(

              padding: const EdgeInsets.symmetric(horizontal: 24),
itemCount: 10,
                itemBuilder: (context,index){

              return  Container(
                width: double.infinity,
                height: 68,
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 58,
                      height: 50,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xffeaeefa)),
                      child: Image.asset(
                        "assets/images/excel.png",
                        width: 48,
                        height: 48,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Attendance Report",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            )),
                        Text("Date : 20-08-2024",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ))
                      ],
                    )
                  ],
                ),
              );
            }),
          )
          
          
        ],
      ),
    );
  }
}
