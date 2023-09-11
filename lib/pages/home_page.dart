import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

import '../widgets/all_item_widget.dart';
import '../widgets/home_bottom_nav_bar.dart';
import '../widgets/row_item_widgets.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Color(0xFFF5F9FD),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF475269).withOpacity(0.8),
                            spreadRadius: 1,
                            blurRadius: 5
                          )
                        ]
                      ),
                    child: Icon(Icons.sort,size: 24,color: Color(0xFF475269),),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Color(0xFFF5F9FD),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xFF475269).withOpacity(0.8),
                              spreadRadius: 1,
                              blurRadius: 5
                          )
                        ]
                    ),
                    child: const badges.Badge(
                      badgeContent: Text("5",style: TextStyle(color: Colors.white),),
                      badgeStyle: badges.BadgeStyle(badgeColor: Colors.redAccent,padding: EdgeInsets.all(7)),
                      child: Icon(Icons.notifications,size: 30,color: Color(0xFF475269),),
                    ),
                  )
                ],
              ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 55,
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
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
                    Container(
                      width: 250,
                      //child: Text("Search",style: TextStyle(color: Color(0xFF475269).withOpacity(0.5),fontSize: 15),),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here",
                          hintStyle: TextStyle(color: Color(0xFF475269).withOpacity(0.7))
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.search,color: Color(0xFF475269),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              RowItemWidget(),
              SizedBox(height: 20,),
              AllItemWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: HomeBottomNavBar(),
    );
  }
}