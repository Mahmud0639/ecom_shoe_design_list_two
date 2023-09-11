import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../widgets/item_bottom_nav_bar.dart';

class ItemPage extends StatelessWidget{
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F9FD),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF475269).withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 5
                        )
                      ]
                    ),
                    child: Icon(Icons.arrow_back,size: 24,color: Color(0xFF475269),),
                  ),

                ),
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F9FD),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF475269).withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: Icon(Icons.favorite,size: 24,color: Colors.redAccent,),
                  ),

                )
              ],
            ),
            ),
            SizedBox(height: 15,),
            Container(
              height: MediaQuery.of(context).size.height*0.43,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20,right: 20),
                    height: 180,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Color(0xFF475269),
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  Image.asset('assets/images/1.png',width: 350,height: 350,fit: BoxFit.contain,)
                ],
              ),
            ),
            Container(
              width: double.infinity,
              //height: MediaQuery.of(context).size.height*0.4,
              padding: EdgeInsets.symmetric(vertical: 17,horizontal: 14),
              decoration: BoxDecoration(
                color: Color(0xFFF5F9FD),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF475269).withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 5
                  )
                ]
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("New Nike Shoe",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Color(0xFF475269)),),
                      Text("\$58",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.redAccent),)
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: RatingBar.builder(
                        itemCount: 5,
                        itemSize: 25,
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,


                        itemBuilder: (context,_)=>Icon(Icons.favorite,color: Colors.redAccent,), onRatingUpdate: (rating){}),
                  ),
                  SizedBox(height: 10,),
                  Text(" Please don't be late to buy this stunning shoe.late to buy this stunning shoe.This is a nike new shoe. You can buy it in very suitable price. Please don't be late to buy this stunning shoe.This is a nike new shoe. You can buy it in very suitable price. Please don't be late to buy this stunning shoe.This is a nike new shoe. You can buy it in very suitable price.",textAlign: TextAlign.justify,style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Color(0xFF475269)),),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Text('Size: ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Color(0xFF475269)),),
                      SizedBox(width: 10,),
                      Row(
                        children: [
                          for(int i =5; i<10; i++)
                            Container(
                              height: 35,
                              width: 35,
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  color: Color(0xFFF5F9FD),
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color(0xFF475269).withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 5
                                    )
                                  ]
                              ),
                              child: Text(
                                '$i',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xFF475269)),
                              ),
                            )
                        ],
                      )
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      )
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}