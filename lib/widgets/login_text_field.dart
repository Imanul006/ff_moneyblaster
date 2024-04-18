import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final String hintText;
  final String title;
  final TextEditingController controller;

  const LoginTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
          ),
          Stack(
            children: [
              Image.asset(
                "assets/images/textfield.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: hintText,
                      hintStyle: const TextStyle(color: Color(0xffABABAB), fontWeight: FontWeight.w300,),
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                      
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
