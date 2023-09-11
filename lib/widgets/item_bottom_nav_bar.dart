import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import 'bottom_cart_sheet.dart';

class ItemBottomNavBar extends StatelessWidget{
  const ItemBottomNavBar({super.key});


  @override
  Widget build(BuildContext context){
    return Container(
      color: Color(0xFFF5F9FD),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            decoration: BoxDecoration(
              color: Color(0xFF475269),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF475269).withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 5
                )
              ]
            ),
            child: const Row(
              children: [
                Text('Add to cart',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500,color: Colors.white),),
                SizedBox(width: 10,),
                Icon(CupertinoIcons.cart_fill_badge_plus,size: 24,color: Colors.white,)
              ],
            ),
          ),
          InkWell(
            onTap: (){
              showSlidingBottomSheet(context, builder: (context){
                return SlidingSheetDialog(
                    elevation: 8,
                    cornerRadius: 16,
                    builder: (context,state){
                      return BottomCartSheet();
                    }
                );
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              decoration: BoxDecoration(
                  color: Color(0xFF475269),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xFF475269).withOpacity(0.3),
                        spreadRadius: 1,
                        blurRadius: 5
                    )
                  ]
              ),
              child: const Row(
                children: [
                  Icon(Icons.shopping_bag,size: 24,color: Colors.white,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}