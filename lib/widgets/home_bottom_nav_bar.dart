import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

import 'bottom_cart_sheet.dart';

class HomeBottomNavBar extends StatelessWidget{
  const HomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: 60,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFF475269).withOpacity(0.3),
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.category_outlined,color: Colors.white,size: 24,),
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
              child: Icon(CupertinoIcons.cart_fill,color: Colors.white,size: 24,)),
          Icon(Icons.favorite_border,color: Colors.white,size: 24,),
          Icon(Icons.person,color: Colors.white,size: 24,)
        ],
      ),
    );
  }
}