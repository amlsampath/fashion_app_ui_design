import 'package:flutter/material.dart';

class CustomIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomIconText({
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: size.height * .05,
        ),
        SizedBox(
          height: size.height * .01,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: size.height * .025,
          ),
        )
      ],
    );
  }
}
