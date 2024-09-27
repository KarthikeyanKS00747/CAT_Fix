import 'package:flutter/material.dart';

class InspectionInput extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  //final String h;
  const InspectionInput(
      {super.key, required this.title, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        width: double.maxFinite,
        height: 70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                //height: 0.18,
                letterSpacing: 0.18,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              width: double.maxFinite,
              height: 36,
              decoration: ShapeDecoration(
                color: Color(0xFFD9D9D9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            //maxLines: null,
                            decoration: InputDecoration(border: InputBorder.none),
                            controller: controller,
                          ),
                        ),
                        IconButton.filled(
                          onPressed: (){},
                          icon: Icon(Icons.abc)
                          )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        decoration: ShapeDecoration(
          color: Color(0x6BFFA800),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7.23),
          ),
        ),
      ),
    );
  }
}
