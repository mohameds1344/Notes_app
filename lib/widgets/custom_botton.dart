import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, required this.title, required this.onTap,this.isLoading = false});
  final String title;

  final void Function()? onTap;
  final bool isLoading;

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
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(spreadRadius: 1, blurRadius: 10, offset: Offset(0, 5)),
            ],
          ),
          child: Center(
            child:isLoading ? const CircularProgressIndicator(
              color: Colors.black,
            ) :  Text(
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
