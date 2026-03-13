import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 
 void main(){
  runApp(Project());
 }



class Project extends StatelessWidget{
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      body: Container( 
        margin: EdgeInsetsGeometry.symmetric(horizontal: 10),
        height:580,
        color:const Color.fromARGB(0, 254, 255, 255),
        child: Column(
        children: [
          Container(height: 120, width: 360, color: Color(0xFFE4F2FD),),
           SizedBox(height: 15,),
           Row(
            children: [
              Container( height: 20 , width: 20,color: Color(0XFFE0E0E0)),
              SizedBox(width: 10,),
              Container(height: 20 ,width: 310,color: Color(0XFFE0E0E0) )
            ],
           ),SizedBox(height: 10,),
           Container(height: 2 ,width: 360,color: Color(0XFFE0E0E0)),
           SizedBox(height: 15,),
           Row(
            children: [
              Column(
                children: [Container( width: 175,height: 50, color: Color(0XFFA5D6A7),),
                  SizedBox(height: 10,),
                  Container(width: 175,height: 50, color: Color(0XFFA5D6A7),)
                ],
              ), 
              SizedBox(width: 10,),
              Row(
                children: [
                  Container(width: 75,height: 110, color: Color(0XFFFFCC80)),
                  SizedBox(width: 5,),
                  Container(width: 75,height: 110, color: Color(0XFFFFCC80)),
                ],
              )
            ],
           ),
           SizedBox(height: 10,),
           Container( color: Color(0XFFF3E5F6),
            child:
           Row(
            children: [
              Row(
                children: [
                  Container(width: 85, height: 110, color: Color(0XFFE1BEE8))
                ],
              ),SizedBox(width: 10,),
              Column(
                children: [
                  Container(width: 85, height: 47.5, color: Color(0XFFCF93D9)),
                  SizedBox(height: 15,),
                   Container(width: 85, height: 47.5, color: Color(0XFFCF93D9))
                ],
              ),
              SizedBox(width: 10,),
              Row(
                children: [
                  Container(width: 80, height: 110, color: Color(0XFFE1BEE8)),
                ],
              ),
            ],
           ),
           ),
           SizedBox(height: 15,),
           Row( children: [
            Container(width: 165, height: 50, color: Color(0XFFB2DFDC)),
            SizedBox(width: 10,),
            Container(width: 165, height: 50, color: Color(0XFF80CDC4))
            ],
           ),SizedBox(height: 10,),
           Container(width: 360, height: 50, color: Color(0XFFE0E0E0))
        ],
      ),
      ),
    ),
  );
  }
}