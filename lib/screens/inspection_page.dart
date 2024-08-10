import 'package:flutter/material.dart';

class InspectionPage extends StatefulWidget {
  const InspectionPage({super.key});

  @override
  State<InspectionPage> createState() => _InspectionPageState();
}

class _InspectionPageState extends State<InspectionPage> {
  int currentPosition = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text(
          'Progress',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  currentPosition++;
                });
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
    );
  }
}
