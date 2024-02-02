import 'package:carmelschool/constants/color.dart';
import 'package:carmelschool/pages/homepage/controller/homepagecontroller.dart';
import 'package:carmelschool/pages/sidedrawer/sidedrawer.dart';
import 'package:carmelschool/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_dropdown.dart';
import '../../widgets/dropdown.dart';

class StudentProfile extends StatelessWidget {
  StudentProfile({super.key});
  
  var isOpenMonths=false.obs;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/Home.png"))),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
          
              ///Drawer and Logo======================================================================================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent,
                        border: Border.all(color: blue)
                      ),
                      padding: const EdgeInsets.all(5),
                      child: const Icon(Icons.arrow_back,color: blue,),
                    ),
                  ),
                  Image.asset(
                    "assets/images/logo.png",
                    scale: 2.8,
                    width: 120,
                  ),
          
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.transparent,
                          border: Border.all(color: Colors.transparent,)
                      ),
                      padding:  const EdgeInsets.all(5),
                      child:  const Icon(Icons.arrow_back,color:Colors.transparent,),
                    ),
                  ),
               /*   Container(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    decoration: const BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    child: Image.asset(
                      "assets/images/menu.png",
                      width: 30,
                    ),
                  )*/
                ],
              ),
          
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    generateReportBottomSheet();
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                    width: Get.width*0.45,
                    decoration: const BoxDecoration(
                      color: blue,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8)
                      )
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(width: 5,),
                        Image.asset("assets/images/reporter.png",height: 20,width: 20,),
                        const SizedBox(width: 20,),
                        const Text("Generate Report",style: TextStyle(color: white,fontSize: 12,
                          fontWeight: FontWeight.w500
                        ),)
                      ],
                    )
                  ),
                ),
              ),
          
              /// Card Section========================================================================================
          
              const SizedBox(
                height: 25,
              ),
          
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 24),
                    padding: const EdgeInsets.only(top: 50),
                    height: 510,
                    child: Stack(
                      fit: StackFit.expand,
                      // alignment: Alignment.topCenter,
                      children: [
                        Container(
                          height: 400,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black38),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 90,
                            ),
                            Center(
                                child: Image.asset(
                                  "assets/images/qr_code.png",
                                  height: 200,
                                )),
          
                            const SizedBox(
                              height: 15,
                            ),
          
                            /// First name and date of birthday
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "First Name",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                      Text(
                                        "Streve",
                                        style: TextStyle(
                                            color: blue1, fontSize: 15),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 120,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Date of Birth",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "29-01-2001",
                                          style: TextStyle(
                                              color: blue1, fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
          
                            const SizedBox(
                              height: 10,
                            ),
          
                            /// last name and graduation year
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Last Name",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                      Text(
                                        "Albert",
                                        style: TextStyle(
                                            color: blue1, fontSize: 15),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 120,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Graduation Year",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15),
                                        ),
                                        Text(
                                          "2024",
                                          style: TextStyle(
                                              color: blue1, fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
          
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              width: Get.width,
                              decoration: const BoxDecoration(
                                  color: blue,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20)),
                                  border: Border(
                                      top: BorderSide(color: blue1, width: 3))),
                              child: const Center(
                                child: Text(
                                  "Student ID",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 4,
                    left: 155,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset("assets/images/profile.png", width: 100),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
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
                child: GestureDetector(
                  onTap: () {
                    if(selectedMonthsList.contains(monthsList[index]))
                    {
                      selectedMonthsList.remove(monthsList[index]);
                    }
                    else{
                      selectedMonthsList.add(monthsList[index]);
                    }
                    print(selectedMonthsList);

                  },
                  child: Container(
                    color: Colors.transparent,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(monthsList[index].toString(),
                          style: const TextStyle(color: blue,fontSize: 13,fontWeight: FontWeight.w600,fontFamily: "SF Pro Text"),
                        ),
                        Obx(() =>    selectedMonthsList.contains(monthsList[index])?
                        const Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Icon(Icons.check,color: blue,),
                        ):const SizedBox.shrink())
                      ],
                    ),
                  ),
                ),
              );
            }),
          )
      ),
    );
  }

   Future generateReportBottomSheet(){

    return         showModalBottomSheet(
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

                Obx(() =>    selectedMonthsList.isNotEmpty?
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  spacing: 15.0,runSpacing: 20.0,
                  children: List.generate(selectedMonthsList.length,  (index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 15.0,top: 5),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                            margin: EdgeInsets.zero,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Text(selectedMonthsList[index].toString(),
                              style: const TextStyle(color: blue,fontSize: 13,fontWeight: FontWeight.w600,fontFamily: "SF Pro Text"),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              selectedMonthsList.removeAt(index);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 25.0),
                              child: Image.asset("assets/images/Vector.png",scale: 4,),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
                )
                    :const SizedBox.shrink()),

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

}


