import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class InspectionWidget extends StatelessWidget {
  final String truckNumber;
  final String duration;
  final String inspectionType;
  final String address;
  final String date;

  const InspectionWidget({
    required this.truckNumber,
    required this.duration,
    required this.inspectionType,
    required this.address,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

       context.go("/inspectionpage");
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 4.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.amber[200],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  truckNumber,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          Icon(Icons.access_time, size: 16),
                          SizedBox(width: 4),
                          Text(duration),
                        ],
                      ),
                    ),
                    //SizedBox(width: 16),
                    Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          Icon(Icons.description, size: 16),
                          SizedBox(width: 4),
                          Text(inspectionType),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Icon(Icons.location_pin, size: 16),
                    SizedBox(width: 4),
                    Expanded(child: Text(address)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}