import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, this.onPressed});

  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Text(title, style: TextStyle(fontSize: 30)),
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            color: Color(0xff3B3B3B),
            borderRadius: BorderRadius.circular(16),
          ),
          child: IconButton(onPressed: onPressed, icon: Icon(icon, size: 24)),
        ),
      ],
    );
  }
}
