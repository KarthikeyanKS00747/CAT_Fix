import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_test_3/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_test_3/router/router.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const CatFixApp());
}

class CatFixApp extends StatelessWidget {
  const CatFixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(338,773),
      child: MaterialApp.router(
        title: 'CAT Fix',
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        routerConfig: router,
      ),
    );
  }
}

