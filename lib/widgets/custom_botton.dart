import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomBotton extends StatelessWidget {
  CustomBotton({super.key, required this.title, this.onTap});
  String title;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 50,

          decoration: BoxDecoration(
            color: KPrimaryColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
