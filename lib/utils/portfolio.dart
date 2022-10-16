import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:portfolio/components/footer.dart';
import 'package:portfolio/components/skills.dart';

import '../components/about.dart';
import '../components/education.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {

  List<Widget> navItems = [];
  bool isMobile = false;
  final skillKey = GlobalKey();
  




  @override
  void initState() {
    navItems = [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {

      }, child: Text("Education")),
    ),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: () {
        Scrollable.ensureVisible(skillKey.currentContext!);
      }, child: Text("Skills")),
    ),
  ];
    
    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    isMobile = MediaQuery.of(context).size.width > 700 ? false : true;
    return Scaffold(appBar: AppBar(
        title: Text("Portfolio"),
        actions: isMobile ? null : navItems,
      ),
      drawer: isMobile
          ? Drawer(
              child: ListView(
                children: navItems,
              ),
            )
          : null,
          body: SingleChildScrollView(
            child: Center(
              child: Column(children: [
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 20.0,
                    children: [

                    About(),
                    Education(),
                      
                    ],
                  ),
                  
                  Skills(
                    key: skillKey,
                  ),
                  Footer(),
              ],
              ),
            ),
          ),
          );
  }
}