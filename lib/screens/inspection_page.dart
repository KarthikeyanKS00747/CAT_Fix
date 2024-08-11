import 'package:go_router/go_router.dart';
import 'package:firebase_test_3/widgets/inspection_description_widget.dart';
import 'package:firebase_test_3/widgets/inspection_input.dart';
import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:go_router/go_router.dart';

//import 'package:flutter_svg/flutter_svg.dart';
final TextEditingController tirePressureLeftFrontController =
    TextEditingController();
final TextEditingController tirePressureRightFrontController =
    TextEditingController();
final TextEditingController tireConditionLeftFrontController =
    TextEditingController();
final TextEditingController tireConditionRightFrontController =
    TextEditingController();
final TextEditingController tirePressureLeftRearController =
    TextEditingController();
final TextEditingController tirePressureRightRearController =
    TextEditingController();
final TextEditingController tireConditionLeftRearController =
    TextEditingController();
final TextEditingController tireConditionRightRearController =
    TextEditingController();

final TextEditingController batteryMakeController = TextEditingController();
final TextEditingController batteryReplacementDateController =
    TextEditingController();
final TextEditingController batteryVoltageController = TextEditingController();
final TextEditingController batteryWaterLevelController =
    TextEditingController();
final TextEditingController conditionOfBatteryController =
    TextEditingController();
final TextEditingController anyLeakRustInBatteryController =
    TextEditingController();

final TextEditingController brakeFluidLevelController = TextEditingController();
final TextEditingController brakeConditionFrontController =
    TextEditingController();
final TextEditingController brakeConditionRearController =
    TextEditingController();
final TextEditingController emergencyBrakeController = TextEditingController();

class InspectionPage extends StatefulWidget {
  const InspectionPage({super.key});

  @override
  State<InspectionPage> createState() => _InspectionPageState();
}

class _InspectionPageState extends State<InspectionPage> {
  List<Widget>? batteryWidgets = [
    InspectionDescriptionWidget(
      title: "BATTERY",
      description:
          "For every question asked, please speak back to answer. To elaborate, if asked about Battery Voltage Pressure reply by saying the value measured. ",
    ),
    InspectionInput(
      title: 'Battery Make',
      controller: batteryMakeController,
    ),
    InspectionInput(
      title: 'Battery Replacement Date',
      controller: batteryReplacementDateController,
    ),
    InspectionInput(
      title: 'Battery Voltage',
      controller: batteryVoltageController,
    ),
    InspectionInput(
      title: 'Battery Water Level',
      controller: batteryWaterLevelController,
    ),
    InspectionInput(
      title: 'Condition of Battery (Any Damage)',
      controller: conditionOfBatteryController,
    ),
    InspectionInput(
      title: 'Any Leak/Rust in Battery',
      controller: anyLeakRustInBatteryController,
    ),
  ];

  List<Widget>? tireWidgets = [
    InspectionDescriptionWidget(
      title: "TIRES",
      description:
          "For every question asked, please speak back to answer. To elaborate, if asked about the Tire Pressure, reply by saying the value measured. ",
    ),
    InspectionInput(
      title: 'Tire Pressure for Left Front',
      controller: tirePressureLeftFrontController,
    ),
    InspectionInput(
      title: 'Tire Pressure for Right Front',
      controller: tirePressureRightFrontController,
    ),
    InspectionInput(
      title: 'Tire Condition for Left Front',
      controller: tireConditionLeftFrontController,
    ),
    InspectionInput(
      title: 'Tire Condition for Right Front',
      controller: tireConditionRightFrontController,
    ),
    InspectionInput(
      title: 'Tire Pressure for Left Rear',
      controller: tirePressureLeftRearController,
    ),
    InspectionInput(
      title: 'Tire Pressure for Right Rear',
      controller: tirePressureRightRearController,
    ),
    InspectionInput(
      title: 'Tire Condition for Left Rear',
      controller: tireConditionLeftRearController,
    ),
    InspectionInput(
      title: 'Tire Condition for Right Rear',
      controller: tireConditionRightRearController,
    ),
  ];
  List<Widget>? exteriorWidgets = [
    InspectionDescriptionWidget(
      title: "EXTERIOR",
      description:
          "For every question asked, please speak back to answer. To elaborate, when asked about Oil leak in Suspension, reply by saying Yes or No",
    ),
  ];
  List<Widget>? brakeWidgets = [
    InspectionDescriptionWidget(
      title: "BRAKES",
      description:
          "For every question asked, please speak back to answer. To elaborate, when asked about the Brake Fluid Level, reply by saying Good, OK or Low. ",
    ),
    InspectionInput(
      title: 'Brake Fluid Level',
      controller: brakeFluidLevelController,
    ),
    InspectionInput(
      title: 'Brake Condition for Front',
      controller: brakeConditionFrontController,
    ),
    InspectionInput(
      title: 'Brake Condition for Rear',
      controller: brakeConditionRearController,
    ),
    InspectionInput(
      title: 'Emergency Brake',
      controller: emergencyBrakeController,
    ),
  ];
  List<Widget>? engineWidgets = [
    InspectionDescriptionWidget(
      title: "ENGINE",
      description:
          "For every question asked, please speak back to answer. To elaborate, when asked about Engine Oil Condition, reply by saying Good, OK or Low.",
    ),
  ];
  List<Widget>? selectedList;
  int activeStep = 0;
  @override
  Widget build(BuildContext context) {
    // print(activeStep);
    switch (activeStep) {
      case 0:
        selectedList = tireWidgets;
        break;
      case 1:
        selectedList = batteryWidgets;
        break;
      case 2:
        selectedList = exteriorWidgets;
        break;
      case 3:
        selectedList = brakeWidgets;
        break;
      case 4:
        selectedList = engineWidgets;
        break;
      // Add more cases for activeStep 3 to 6
      default:
        selectedList = tireWidgets;
    }
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          //physics: NeverScrollableScrollPhysics(),
          child: Row(
            children: [
              EasyStepper(
                enableStepTapping: true,
                direction: Axis.vertical,
                activeStep: activeStep,
                stepShape: StepShape.circle,
                stepBorderRadius: 32,
                borderThickness: 2,
                padding: EdgeInsets.all(4),
                stepRadius: 30,
                finishedStepBorderColor: Colors.black,
                finishedStepTextColor: Color(0xFFFFC732),
                finishedStepBackgroundColor: Color(0xFFFFC732),
                activeStepIconColor: Colors.white,
                showLoadingAnimation: false,
                steps: [
                  EasyStep(
                    //enabled: false,
                    //customLineWidget: Icon(Icons.abc),
                    //activeIcon: Icon(Icons.abc),
                    //finishIcon: Icon(Icons.access_time),
                    customStep: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: 52,
                        height: 52,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/tire_icon.png"), // Path to your PNG file
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(side: BorderSide(width: 2)),
                        ),
                      ),
                    ),
                  ),
                  EasyStep(
                    //enabled: false,
                    //customLineWidget: Icon(Icons.abc),
                    //activeIcon: Icon(Icons.abc),
                    //finishIcon: Icon(Icons.access_time),
                    customStep: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: 52,
                        height: 52,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/battery_charging_icon.png"), // Path to your PNG file
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(side: BorderSide(width: 2)),
                        ),
                      ),
                    ),
                  ),
                  EasyStep(
                    //enabled: false,
                    //customLineWidget: Icon(Icons.abc),
                    //activeIcon: Icon(Icons.abc),
                    //finishIcon: Icon(Icons.access_time),
                    customStep: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: 52,
                        height: 52,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/exterior_truck_icon.png"), // Path to your PNG file
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(side: BorderSide(width: 2)),
                        ),
                      ),
                    ),
                  ),
                  EasyStep(
                    //enabled: false,
                    //customLineWidget: Icon(Icons.abc),
                    //activeIcon: Icon(Icons.abc),
                    //finishIcon: Icon(Icons.access_time),
                    customStep: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: 52,
                        height: 52,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/brake_icon.png"), // Path to your PNG file
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(side: BorderSide(width: 2)),
                        ),
                      ),
                    ),
                  ),
                  EasyStep(
                    //enabled: false,
                    //customLineWidget: Icon(Icons.abc),
                    //activeIcon: Icon(Icons.abc),
                    //finishIcon: Icon(Icons.access_time),
                    customStep: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        width: 52,
                        height: 52,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/voice_over_record_icon.png"), // Path to your PNG file
                            fit: BoxFit.fill,
                          ),
                          shape: OvalBorder(side: BorderSide(width: 2)),
                        ),
                      ),
                    ),
                  ),
                ],
                onStepReached: (index) => setState(() => activeStep = index),
              ),
              Container(
                width: 300,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: selectedList?.length,
                  itemBuilder: (BuildContext context, int index) {
                    return selectedList?[index];
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xFFE8E4AB),
      appBar: AppBar(
        backgroundColor: Color(0xFFE8E4AB),
        leading: IconButton(
            onPressed: () {
              setState(() {
                if (activeStep != 0) activeStep--;
              });
            },
            icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: MaterialButton(
          onPressed: () {
            context.go("/homepage");
          },
          child: Text(
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
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  if (activeStep != 5) activeStep++;
                });
              },
              icon: Icon(Icons.arrow_forward))
        ],
      ),
    );
  }
}
