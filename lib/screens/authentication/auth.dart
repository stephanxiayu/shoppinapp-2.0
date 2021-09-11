import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/controllers/appController.dart';
import 'package:untitled/screens/authentication/widgets/bottom_text.dart';
import 'package:untitled/screens/authentication/widgets/login.dart';
import 'package:untitled/screens/authentication/widgets/registration.dart';

class AuthenticationScreen extends StatelessWidget {
  final AppController _appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() => SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
               Text("SG Technology", style: TextStyle(fontSize: 35),),
              
              Container(child: Lottie.network("https://assets10.lottiefiles.com/packages/lf20_xlV8ZH.json")),
             
           
      
              Visibility(
                  visible: _appController.isLoginWidgetDisplayed.value,
                  child: LoginWidget()),
              Visibility(
                  visible: !_appController.isLoginWidgetDisplayed.value,
                  child: RegistrationWidget()),
              SizedBox(
                height: 10,
              ),
              Visibility(
                visible: _appController.isLoginWidgetDisplayed.value,
                child: BottomTextWidget(
                  onTap: () {
                    _appController.changeDIsplayedAuthWidget();
                  },
                  text1: "Don\'t have an account?",
                  text2: "Create account!",
                ),
              ),
              Visibility(
                visible: !_appController.isLoginWidgetDisplayed.value,
                child: BottomTextWidget(
                  onTap: () {
                    _appController.changeDIsplayedAuthWidget();
                  },
                  text1: "Already have an account?",
                  text2: "Sign in!!",
                ),
              ),
            ],
          ),
        ),
      ),)
    );
  }
}
