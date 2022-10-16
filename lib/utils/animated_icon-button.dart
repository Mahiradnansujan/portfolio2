import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedIconButton extends StatefulWidget {
  final IconData iconData;
  final VoidCallback onTap;
  const AnimatedIconButton({
    Key? key,
    required this.iconData,
    required this.onTap,
  }) :super(key: key);

  @override
  State<AnimatedIconButton> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedIconButton> {
  bool isHovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (val) {
        setState(() {
          isHovering = val;
        }
        );
      },
      child: AnimatedContainer(
        duration: const Duration(microseconds: 300),
        decoration: BoxDecoration(
          color: isHovering ? Colors.grey.shade300 : Colors.white,
          borderRadius: BorderRadius.circular(
            12.0
            ),
          border: Border.all(
          color: isHovering ? Colors.grey : Colors.white,
        ),
        ),
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Padding(
          padding: const EdgeInsets.all(4.0),
            child: FaIcon(
              widget.iconData,
              size: 28.0,
            ),
          ),

        ],
      ),
    ),
    );
  }
}