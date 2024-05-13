import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final String title;
  final TextEditingController controller;
  final TextInputType keyboardType = TextInputType.text;

  const AppTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.title,
    keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
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
                  child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
              )),
              Positioned.fill(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
                  child: TextField(
                    controller: controller,
                    keyboardType: keyboardType,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: hintText,
                      hintStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    style: const TextStyle(
                      fontSize: 16,
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
