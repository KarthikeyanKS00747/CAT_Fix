import 'package:flutter/material.dart';
class InspectionDescriptionWidget extends StatefulWidget {
  
  final String title;
  final String description;
  const InspectionDescriptionWidget({super.key, required this.title, required this.description});

  @override
  State<InspectionDescriptionWidget> createState() => _InspectionDescriptionWidgetState();
}

class _InspectionDescriptionWidgetState extends State<InspectionDescriptionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        width: double.maxFinite,
        height: 101,
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: widget.title + '\n',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  //height: 0.15,
                  letterSpacing: 0.18,
                ),
              ),
              TextSpan(
                text:
                    widget.description,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  //height: 0.18,
                  letterSpacing: 0.18,
                ),
              ),
            ],
          ),
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
