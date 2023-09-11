import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllItemWidget extends StatelessWidget{
  const AllItemWidget({super.key});

  @override
  Widget build(BuildContext context){
    return GridView.count(
        childAspectRatio: 0.68,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        crossAxisCount: 2,
    children: [
      for(int i=1; i<5; i++)
      Container(
        margin: EdgeInsets.all(8),
          padding: EdgeInsets.only(left: 15,right: 15,top: 10),
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
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "itemPage");
              },
              child: Padding(padding: EdgeInsets.all(8),
              child: Image.asset("assets/images/$i.png",width: 100,height: 100,),),
            ),
            Padding(padding: EdgeInsets.only(bottom: 7),child: Container(

                alignment: Alignment.centerLeft,
                child: Text("Nike Shoe",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF475269)),)),),
            Container(
              alignment: Alignment.centerLeft,
              child: Text("New Nike Shoe for Men",style: TextStyle(fontSize: 17,fontWeight: FontWeight.normal,color: Color(0xFF475269).withOpacity(0.7)),),
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$36",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.redAccent),),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Color(0xFF475269),
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Icon(CupertinoIcons.cart_fill_badge_plus,color: Colors.white,),
                )
              ],
            ),)
          ],
        ),
      )
    ],);
  }
}