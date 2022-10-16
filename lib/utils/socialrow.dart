import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/utils/animated_icon-button.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedIconButton(
          iconData: FontAwesomeIcons.linkedin, 
          onTap: (){},
        ),
         const SizedBox(width: 8.0,),
        AnimatedIconButton(
          iconData: FontAwesomeIcons.facebook, 
          onTap: (){},
        ),
          const SizedBox(width: 8.0,
          ),
        AnimatedIconButton(
          iconData: FontAwesomeIcons.instagram, 
          onTap: (){},
        ),
        const SizedBox(width: 8.0,
        ),

      ],
    );
  }
}