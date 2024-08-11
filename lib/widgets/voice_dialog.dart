import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VoiceDialog extends StatefulWidget {
  const VoiceDialog({super.key});

  @override
  State<VoiceDialog> createState() => _VoiceDialogState();
}

class _VoiceDialogState extends State<VoiceDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog( 
      child: Container(  
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: const Color(0xFF2F2E41),),
        height: 296,
        width: 359,
        
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),
          child: Column( 
            children: [ 
              Row( 
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ 
                  const SizedBox(height: 24, width: 24,),
                  const Flexible(child: Text("CHOOSE A HOLIDAY TYPE", style: TextStyle(fontFamily: "Metropolis", fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),)),
                  InkWell(
                    child: const SizedBox(
                      height: 24,
                      width: 24,
                      child: Icon(Icons.close, color: Colors.white,),
                      //padding: EdgeInsets.zero, 
                    ),
                    onTap: (){Navigator.pop(context);}, 
                  )
                    
                    //constraints: BoxConstraints(maxHeight: 11, maxWidth: 11),
                  
                ],
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container( 
                  height: 92,
                  width: 327,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all( 
                      color: const Color(0xFF5460DB),
                      width: 1,
                    )
                  ),
                  padding: const EdgeInsets.fromLTRB(8, 20, 8, 20),
                  child: Row()
                  
                ),
              ),
              const SizedBox(height: 24),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                  context.go('/add-multi-holidays');
                },
                child: Container( 
                  height: 92,
                  width: 327,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all( 
                      color: const Color(0xFF5460DB),
                      width: 1,
                    )
                  ),
                  padding: const EdgeInsets.fromLTRB(8, 20, 8, 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [ 
                    Image.asset(
                      'assets/onboarding/multi_day_icon_png.png',

                      height: 44,
                      width: 44,),
                    const SizedBox(width: 7,),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("MULTI DAY", style: TextStyle(fontFamily: "Metropolis", fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white),),
                        Text("Choose a range of planned holidays", style: TextStyle(fontFamily: "Metropolis", fontWeight: FontWeight.normal, fontSize: 12, color: Colors.white),),
                
                      ],
                    )
                  ],),
                  
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}