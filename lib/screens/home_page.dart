import 'package:firebase_test_3/widgets/inspection_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8E4AB),
      
      body: SafeArea(
          child: SingleChildScrollView(
        //physics: NeverScrollableScrollPhysics(),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(children: [
              SizedBox(
                height: 4,
              ),
              Text(
                'Today 03:00 PM',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF9098B1),
                  fontSize: 11.25,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  //height: 0.16,
                  letterSpacing: 0.38,
                ),
              ),
              //ListView.builder(itemBuilder: itemBuilder

              InspectionWidget(
                truckNumber: 'ABC123',
                duration: '2 hours',
                inspectionType: 'Safety',
                address: '123 Main St, Springfield',
                date: '2023-10-01',
              ),
              SizedBox(
                height: 27,
              ),
              Text(
                'Tommorow 11:00 AM',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF9098B1),
                  fontSize: 11.25,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  //height: 0.16,
                  letterSpacing: 0.38,
                ),
              ),
              InspectionWidget(
                truckNumber: 'XYZ789',
                duration: '1.5 hours',
                inspectionType: 'Maintenance',
                address: '456 Elm St, Springfield',
                date: '2023-10-02',
              ),
              InspectionWidget(
                truckNumber: 'LMN456',
                duration: '3 hours',
                inspectionType: 'Emission',
                address: '789 Oak St, Springfield',
                date: '2023-10-03',
              ),
            ]),
          ),
        ),
      )),
      bottomNavigationBar: Container(
    width: double.maxFinite,
    child: Row( 
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(onPressed: (){}, icon: Icon(Icons.history, size: 30,)),
        IconButton.filled(
          style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(Colors.white.withOpacity(0.4699999988079071)), // Set your desired background color here
        ),
          onPressed: (){}, icon: Icon(Icons.dashboard_customize, size: 33, color: Colors.black,)),
        IconButton(onPressed: (){}, icon: Icon(Icons.analytics, size: 30,)),
      ],
    ),
    height: 63,
    decoration: ShapeDecoration(
        color: Color(0xFFFFC631),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
            ),
        ),
    ),
),
      appBar: AppBar(
        backgroundColor: Color(0xFFE8E4AB),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: IconButton(
            onPressed: (){
              context.go("/profilepage");
            },
            icon: Icon(
              Icons.home,
            size: 30,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.alarm,
                  size: 30,
                )),
          )
        ],
        title: Text(
          'My Inspections',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
            height: 0,
          ),
        ),
      ),
    );
  }
}
