import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomCartSheet extends StatelessWidget{
  const BottomCartSheet({super.key});

  @override
  Widget build(BuildContext context){
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        height: 500,
        color: Color(0xFFCEDDEE),
        child: Column(
          children: [
            Container(
              height: 400,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for(int i=1;i<3;i++)
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 130,
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
                            InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, 'itemPage');
                              },
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(top: 10,right: 30),
                                    height: 90,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF475269),
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                  ),
                                  Image.asset('assets/images/$i.png',fit: BoxFit.contain,width: 120,height: 120,)

                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 20),child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Text('Nike Shoe',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xFF475269)),),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5),
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
                                      child: Icon(CupertinoIcons.minus,size: 20,),
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(horizontal: 10),
                                      child: Text('01',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF475269)),),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
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
                                      child: Icon(CupertinoIcons.add,size: 20,),
                                    )
                                  ],
                                )
                              ],
                            ),),
                            Spacer(),
                            Padding(padding: EdgeInsets.symmetric(vertical: 15),child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFF475269).withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 5
                                      )
                                    ]
                                  ),
                                  child: Icon(Icons.delete,color: Colors.red,size: 20,),
                                ),
                                Spacer(),
                                Text('\$24',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.redAccent),)
                              ],
                            ),)
                          ],
                        ),
                      ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                      padding: EdgeInsets.all(12),
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
                          Row(
                            //here we can use Spacer() or MainAxisAlignment.spaceBetween ---same effect
                            //but one thing if we want to keep every children in the spaceBetween then we should use MainAxisAlignment.spaceBetween
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Discount:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Color(0xFF475269)),),
                              //Spacer(),
                              Text('-\$25',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.redAccent),),


                            ],
                          ),
                          Divider(height: 15,thickness: 1,color: Color(0xFF475269).withOpacity(0.3),),
                          Row(
                            //here we can use Spacer() or MainAxisAlignment.spaceBetween ---same effect
                            //but one thing if we want to keep every children in the spaceBetween then we should use MainAxisAlignment.spaceBetween
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Delivery Fee:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Color(0xFF475269)),),
                              //Spacer(),
                              Text('\$20',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF475269)),),


                            ],
                          ),
                          Divider(height: 15,thickness: 1,color: Color(0xFF475269).withOpacity(0.3),),
                          Row(
                            //here we can use Spacer() or MainAxisAlignment.spaceBetween ---same effect
                            //but one thing if we want to keep every children in the spaceBetween then we should use MainAxisAlignment.spaceBetween
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Sub-Total:',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500,color: Color(0xFF475269)),),
                              //Spacer(),
                              Text('\$98',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xFF475269)),),


                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xFFF5F9FD),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF475269).withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 5
                  )
                ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Total:',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xFF475269)),),
                      SizedBox(height: 8,),
                      Text('\$110',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.redAccent),)
                    ],
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
                      decoration: BoxDecoration(
                        color: Color(0xFF475269),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text('Check out',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}