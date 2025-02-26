import 'package:flutter/material.dart';
import 'package:taskati/core/widgets/app_hieght_box.dart';
import 'package:taskati/core/utils/app_images.dart';
import 'package:taskati/screens/home_screen/home_screen.dart';
import 'package:taskati/screens/splash_screen/splash_screen_widgets/descriptions.dart';
import 'package:taskati/screens/splash_screen/splash_screen_widgets/main_title.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
     Future.delayed (Duration(seconds: 3), () {
      
       if(mounted){
        Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));

       }  
      
     
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.appLogoImage),
              MainTitle(),
              AppHieghtBox(10),
              Descriptions()
            ],
          ),
        ),
      ),
    );
  }
}
