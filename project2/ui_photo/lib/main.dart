import 'dart:ui';

import 'package:flutter/material.dart';

void main(){
  runApp(uiPhoto());
}

class uiPhoto extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xfffef7ff),
        body: Padding(padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 6,
            children: [Container( decoration: BoxDecoration(
              color: Color(0xff8160b9),
              borderRadius: BorderRadius.circular(18),
              boxShadow: [BoxShadow(color: const Color.fromARGB(255, 148, 138, 138) ,spreadRadius: 1 ,blurRadius: 2)]),
              child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column( crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 5,
                  children: [Row(children: [
                      CustomTextHome(text: 'Hello!', fontSize: 22, textColor: Colors.white),
                      Icon(Icons.waving_hand , color: Colors.amberAccent,)],),
                      Text('Try your best to build this ui', style: TextStyle(  fontSize: 12, color: Colors.white),),
                      ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(backgroundColor:  Color(0xff673bb7), 
                      shadowColor: const Color.fromARGB(255, 20, 19, 19)) ,
                      child: CustomTextHome(text: 'Get Started', fontSize: 12, textColor: Colors.white)),            
                ],),
              ),
            ),
            CustomTextHome(text: 'Quick Stats', fontSize: 18, textColor: Colors.black),
            Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [ 
              CustomStats(icon: Icons.supervisor_account, iconColor:  Color(0xff673dd6), textNunber: '1234', textdata: 'Users', ),
              CustomStats(icon: Icons.star, iconColor: Colors.orange, textNunber: '4.8',  textdata: 'Rating', ),
              CustomStats(icon: Icons.trending_up, iconColor: Colors.blue, textNunber: '98%', textdata: 'Success')
            ],),
            CustomTextHome(text: 'Features', fontSize: 16, textColor: Colors.black),
            Column( spacing: 12 ,
              children:[ 
           customListTile(iconLeading: Icons.av_timer_rounded,
            textTitle: 'Fast Peformance', 
            textSubtitle: 'Lightning fast app performance'),
           customListTile(iconLeading: Icons.shield, 
            textTitle: 'Scure',
            textSubtitle: 'Your data is safe with us'),
           customListTile(iconLeading: Icons.palette, 
             textTitle: 'Beautiful UI', 
             textSubtitle: 'Moderin and clean design '),
            ],),
            Row(children: [ 
              CustomButton(text: 'Settings', color: Colors.blue, textColor: const Color.fromARGB(255, 254, 254, 254)),
              CustomButton(text: 'text', color: Colors.orangeAccent, textColor: const Color.fromARGB(255, 248, 249, 248))
            ],)
        ],),
        ),

      ),);
  }

}


class CustomTextHome extends StatelessWidget{
  final String text;
  final double fontSize;
  final Color textColor;

  const CustomTextHome({super.key, required this.text, required this.fontSize, required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Text("$text",
    style: TextStyle(fontSize: fontSize , color: textColor , fontWeight: FontWeight.bold),);
  }
}


class CustomStats extends StatelessWidget{
  final IconData icon;
  final Color iconColor;
  final String textNunber;
  final String textdata;
  
  const CustomStats({super.key, required this.icon, required this.iconColor, required this.textNunber, required this.textdata,});

  @override
  Widget build(BuildContext context) {
   return Expanded( 
     child: Padding( padding: EdgeInsetsGeometry.all(8),
       child: Container( 
        decoration: BoxDecoration(color: Colors.white,
       borderRadius: BorderRadius.circular(10),
       boxShadow:[BoxShadow(color: const Color.fromARGB(255, 171, 163, 163) ,spreadRadius: 1 ,blurRadius: 2)]
       ),
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 5),
        child: Column(
          children: [
          Icon(icon , color: iconColor,),
          Text('$textNunber', style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 18),),
          Text('$textdata', style: TextStyle(fontSize: 12),)
        ],),
        ),),
     ),
   );
  }
}


class customListTile extends StatelessWidget{
  final IconData iconLeading;
  final String textTitle;
  final String textSubtitle;

  const customListTile({super.key, required this.iconLeading, required this.textTitle, required this.textSubtitle});

  @override
  Widget build(BuildContext context) {
    return Container( decoration: BoxDecoration( color: Colors.white ,
     borderRadius: BorderRadius.circular(15),
       boxShadow:[BoxShadow(color: const Color.fromARGB(255, 171, 163, 163) ,
       spreadRadius: 1 ,blurRadius: 2)]) ,
      child: ListTile(
        leading: Icon(iconLeading),
        title: Text('$textTitle' ,
        style: TextStyle(fontSize: 14 ,fontWeight: FontWeight.bold,),),
        subtitle: Text('$textSubtitle',
        style: TextStyle(fontSize: 10 , color: const Color.fromARGB(255, 125, 148, 160)),),
        trailing: Icon(Icons.arrow_forward_ios),
        
      ),
    );
  }
}


class CustomButton extends StatelessWidget{
  final String text;
  final Color color;
  final Color textColor;

  const CustomButton({super.key, required this.text, required this.color, required this.textColor});
  @override
  Widget build(BuildContext context) {
   return Expanded(
     child: Padding( padding: EdgeInsetsGeometry.all(2),
       child: ElevatedButton(
        onPressed: (){}, 
        style: ElevatedButton.styleFrom(backgroundColor: color ,
        shadowColor: const Color.fromARGB(255, 20, 19, 19)),
        child: CustomTextHome(text: '$text ', fontSize: 12, textColor: textColor
        ),),
     ),
   );
  }

}