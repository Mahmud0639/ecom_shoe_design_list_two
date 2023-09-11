import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowItemWidget extends StatelessWidget{
  const RowItemWidget({super.key});

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i=1; i<5; i++)
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 10, left: 15),
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 180,
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
                child: Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15,right: 40),
                          width: 115,
                          height: 120,
                          decoration: BoxDecoration(
                              color: Color(0xFF475269),
                              borderRadius: BorderRadius.circular(10)
                          ),
                        ),
                        Image.asset("assets/images/$i.png",fit:BoxFit.contain,height: 150,width: 150,),
                      ],
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Nike Shoe",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Color(0xFF475269)),),
                          SizedBox(height: 5,),
                          Text("Men's shoe",style: TextStyle(color: Color(0xFF475269).withOpacity(0.8),fontSize: 16,fontWeight: FontWeight.w500),),
                          
                          Spacer(),
                          Row(
                            children: [
                              Text("\$24",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red[200]),),
                              SizedBox(width: 50,),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFF475269),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Icon(CupertinoIcons.cart_fill_badge_plus,color: Colors.white,),
                              )


                            ],
                          )
                        ],
                      ),)

                  ],
                ),
                
              ),






        ],
      ),
    );
  }
}