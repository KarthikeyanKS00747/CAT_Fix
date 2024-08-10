import 'package:flutter/material.dart';

class TextFieldWithTextWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final TextEditingController controller;
  final bool iconPresent;
  IconData? icon;
  TextFieldWithTextWidget(
      {super.key,
      required this.text,
      required this.controller,
      required this.iconPresent,
      this.icon, 
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  //height: 0.18,
                  letterSpacing: 0.27,
                ),
              ),
            ],
          ),
          SizedBox(height: 8,),
          Container(
            width: double.maxFinite,
            height: 48,
            //padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: ShapeDecoration(
              color: Color(0xFFF2CB63),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: Color(0xFFC4C4C4),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(border: InputBorder.none),
                    controller: controller,
                  )),
                  if (iconPresent == true) IconButton(
                    onPressed: (){},
                    icon: Icon(icon,
                    size: 24,)
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
