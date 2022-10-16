import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/animated_contact.dart';
import 'package:portfolio/utils/socialrow.dart';
import 'package:velocity_x/velocity_x.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20.0,
      ),
      width: context.screenWidth < 700 
      ? context.screenWidth * 0.9
      : context.screenWidth < 1600
      ? context.screenWidth * 0.3
      : context.screenWidth * 0.2,

 decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(18.0),
 ),
 padding: EdgeInsets.all(30.0),
 height: 750.0,
 child: Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Column(
      children: [
        Image.asset(
      "assets/mahi.png",
    height: 156.0,
    ),
    Text(
      "MAHIR ADNAN SUJAN",
      style: TextStyle(
        fontSize: 25.0,
        fontWeight: FontWeight.w500,
      ),
    ),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text("Iam a Software Engineer",
      textAlign: TextAlign.center,
      ),
    ),
    Wrap(
      alignment: WrapAlignment.center,
      spacing: 8.0,
      runSpacing: 8.0,
      children: const [
        Chip(
          label: Text(
      "Full Stack Developer",
    ),
    labelStyle: TextStyle(
      color: Colors.white,
      fontSize: 14.0,
    ),
      backgroundColor: Colors.green,
      padding: EdgeInsets.all(6.0),
    ),


    Chip(
      label: Text(
      "App Developer",
      ),
      labelStyle: TextStyle(
      color: Colors.white,
      fontSize: 14.0,
    ),
      backgroundColor: Colors.green,
      padding: EdgeInsets.all(6.0),
    ),
      ],
    ),


    Divider(),

    

    AnimatedContact(
      iconData: FontAwesomeIcons.github,
      title: "Github",
      subtitle: "Mahir",
      onTap: () {},
      ),

       AnimatedContact(
      iconData: FontAwesomeIcons.linkedin,
      title: "Linkedin",
      subtitle: "Mahir Adnan sujan",
      onTap: () {},
      ),


       AnimatedContact(
      iconData: FontAwesomeIcons.facebook,
      title: "Facebook",
      subtitle: "sujan12",
      onTap: () {},
      ),

      ],
    ),
    

    


    Column(
      children: [
        Divider(),
      ],
    ),
    SocialRow(),
  ],
 ),

    );
  }
}