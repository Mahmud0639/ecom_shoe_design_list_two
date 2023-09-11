import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 15),
              child: Image.asset('assets/images/login.png'),),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 55,

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
                    Icon(Icons.person,size: 24,color: Color(0xFF475269),),
                    SizedBox(width: 15,),
                    Container(
                      width: 250,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter username"
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 55,
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
                    Icon(Icons.lock,size: 24,color: Color(0xFF475269),),
                    SizedBox(width: 15,),
                    Container(
                      width: 250,
                      child: TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter password"
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 15),
                child: TextButton(
                  onPressed: (){},
                  child: Text("Forgot password?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF475269)),),
                ),
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "homePage");
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.symmetric(horizontal: 15),
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
                  child: Text("Sign in",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have account? - ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xFF475269).withOpacity(0.8)),),
                  TextButton(onPressed: (){}, child: Text('Sign up',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Color(0xFF475269)),))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}