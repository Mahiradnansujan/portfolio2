import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:velocity_x/velocity_x.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20.0,
      runSpacing: 20.0,
      alignment: WrapAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          alignment: Alignment.center,
          child: Text(
            "My Skills",
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),


        //programming language add 
        Container(
          width: context.screenWidth < 900 
          ? context.screenWidth * 0.9
          : ((context.screenWidth * 0.7) / 3),
          decoration: BoxDecoration(color: Colors.white, 
          borderRadius: BorderRadius.circular(20.0)),
          padding: EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Programming Languages",
              style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w700,
            ),
              ),
              Divider(),
           Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: const [
              Chip(
                label: Text("Dart",
                ),
              labelStyle: TextStyle(color: Colors.indigo,
              ),
              side: BorderSide(
                color: Colors.indigo,
              ),
              backgroundColor: Colors.white,
              ),
              Chip(
                label: Text("C++",
                ),
              labelStyle: TextStyle(color: Colors.indigo,
              ),
              side: BorderSide(
                color: Colors.indigo,
              ),
              backgroundColor: Colors.white,
              ),
              Chip(
                label: Text("java",
                ),
              labelStyle: TextStyle(color: Colors.indigo,
              ),
              side: BorderSide(
                color: Colors.indigo,
              ),
              backgroundColor: Colors.white,
              ),

            ],
           ),
              

            ],

          ),
        ),
         


         //Frameworks
        Container(
          width: context.screenWidth < 900 
          ? context.screenWidth * 0.9
          : ((context.screenWidth * 0.7) / 3),
          decoration: BoxDecoration(color: Colors.white, 
          borderRadius: BorderRadius.circular(20.0)),
          padding: EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text("Frameworks",
              style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
            ),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: const [
                    Chip(
                label: Text("Flutter",
                ),
              
              labelStyle: TextStyle(color: Colors.indigo,
              ),
              side: BorderSide(
                color: Colors.indigo,
              ),
              backgroundColor: Colors.white,
              ),
              Chip(
                label: Text("React Native",
                ),
              
              labelStyle: TextStyle(color: Colors.indigo,
              ),
              side: BorderSide(
                color: Colors.indigo,
              ),
              backgroundColor: Colors.white,
              ),
                ],
              ),
              
            ],

          ),
        ),



       //others Tools
        Container(
          width: context.screenWidth < 900 
          ? context.screenWidth * 0.9
          : ((context.screenWidth * 0.7) / 3),
          decoration: BoxDecoration(color: Colors.white, 
          borderRadius: BorderRadius.circular(20.0)),
          padding: EdgeInsets.all(28.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Others Tools",
              style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.w700,
            ),
              ),
              Divider(),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                Chip(
                label: Text("Adobe",
                ),
              
              labelStyle: TextStyle(color: Colors.indigo,
              ),
              side: BorderSide(
                color: Colors.indigo,
              ),
              backgroundColor: Colors.white,
              ),
              Chip(
                label: Text("Analysis",
                ),
              
              labelStyle: TextStyle(color: Colors.indigo,
              ),
              side: BorderSide(
                color: Colors.indigo,
              ),
              backgroundColor: Colors.white,
              ),

                ],
              ),
              
            ],

          ),
        ),







      ],
    );
  }
}