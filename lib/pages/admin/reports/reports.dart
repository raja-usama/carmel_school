import 'package:carmelschool/constants/color.dart';
import 'package:carmelschool/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_button.dart';


class Reports extends StatelessWidget {
   Reports({super.key});
   var isOpenMonths=false.obs;
   var isOpenGraduationYear=false.obs;
   RxList selectedMonthsList=[].obs;
  final monthsList = [
    'January',
    'February',
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

   final graduationList = [
     '2015',
     '2016',
     '2017',
     '2018',
     '2019',
     '2020',
     '2021',
     '2022',
     '2023'
   ];


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          reportsBottomSheet();
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


  Future reportsBottomSheet(){
    return  showModalBottomSheet(
      backgroundColor: bgColor,
      context: Get.context!, builder: (context) {
      return SizedBox(
        height: Get.height*0.4,
        width: Get.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10,),
                const Center(
                  child: Text("Generate Report",
                    style: TextStyle(
                        fontFamily: "SF Pro Text",
                        color: Colors.black54, fontSize: 16,fontWeight: FontWeight.w600),),
                ),
                const SizedBox(height: 15,),
                const Text("Select Months",
                  style: TextStyle(
                      fontFamily: "SF Pro Text",
                      color: Colors.black54, fontSize: 13,fontWeight: FontWeight.w600),),
                const SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 15,),
                          Image.asset("assets/images/calender.png",scale: 4,),
                          const SizedBox(width: 15,),
                          const Text("All Time",
                            style: TextStyle(color: blue,fontSize: 12,fontWeight: FontWeight.w400,fontFamily: "SF Pro Text"),
                          ),
                        ],
                      ) ,
                      GestureDetector(
                        onTap: () {
                          isOpenMonths.value =!  isOpenMonths.value;
                        },
                        child:   Row(
                          children: [
                            Obx(() =>   isOpenMonths.value==true?
                            const Icon(Icons.keyboard_arrow_up,color: blue,)
                                :
                            const Icon(Icons.keyboard_arrow_down,color: blue,),),
                            const SizedBox(width: 15,)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10,),

                Obx(() =>   isOpenMonths.value==true?
                monthNameWidgetContainer()
                    :const SizedBox()),

                const Text("Graduation Year",
                  style: TextStyle(
                      fontFamily: "SF Pro Text",
                      color: Colors.black54, fontSize: 13,fontWeight: FontWeight.w600),),
                const SizedBox(height: 10,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 45,
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(width: 15,),
                          Image.asset("assets/images/Graduate.png",scale: 4,),
                          const SizedBox(width: 15,),
                          const Text("2015",
                            style: TextStyle(color: blue,fontSize: 12,fontWeight: FontWeight.w400,fontFamily: "SF Pro Text"),
                          ),
                        ],
                      ) ,
                      GestureDetector(
                        onTap: () {
                          isOpenGraduationYear.value =!  isOpenGraduationYear.value;
                        },
                        child:   Row(
                          children: [
                            Obx(() =>   isOpenGraduationYear.value==true?
                            const Icon(Icons.keyboard_arrow_up,color: blue,)
                                :
                            const Icon(Icons.keyboard_arrow_down,color: blue,),),
                            const SizedBox(width: 15,)
                          ],
                        ),
                      )
                    ],
                  ),
                ),

                Obx(() =>   isOpenGraduationYear.value==true?
                graduationWidgetContainer()
                    :const SizedBox()),

                const SizedBox(height: 20,),

                Center(child: CustomButton(title: "Okay",textColor: white,backgroundColor: blue,height: 40,width: Get.width*0.4,
                  onPressed: () {
                    Get.back();
                  },
                ))



              ],
            ),
          ),
        ),
      );
    },);
  }

   Widget monthNameWidgetContainer(){
     return  Padding(
       padding: const EdgeInsets.only(top: 15,bottom: 15),
       child: Container(
           width: Get.width,
           padding: EdgeInsets.zero,
           margin: EdgeInsets.zero,
           decoration: BoxDecoration(
             color: white,
             borderRadius: BorderRadius.circular(10),
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,
             children: List.generate(monthsList.length,  (index) {
               return Padding(
                 padding: const EdgeInsets.only(left: 15.0,top: 5),
                 child: Text(monthsList[index].toString(),
                   style: const TextStyle(color: blue,fontSize: 13,fontWeight: FontWeight.w600,fontFamily: "SF Pro Text"),
                 ),
               );
             }),
           )
       ),
     );
   }

   Widget graduationWidgetContainer(){
     return  Padding(
       padding: const EdgeInsets.only(top: 15,bottom: 15),
       child: Container(
           width: Get.width,
           padding: EdgeInsets.zero,
           margin: EdgeInsets.zero,
           decoration: BoxDecoration(
             color: white,
             borderRadius: BorderRadius.circular(10),
           ),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.start,
             children: List.generate(graduationList.length,  (index) {
               return Padding(
                 padding: const EdgeInsets.only(left: 15.0,top: 5),
                 child: Text(graduationList[index].toString(),
                   style: const TextStyle(color: blue,fontSize: 13,fontWeight: FontWeight.w600,fontFamily: "SF Pro Text"),
                 ),
               );
             }),
           )
       ),
     );
   }



}
