import 'package:expense_tracker/utils/app_colors.dart';
import 'package:expense_tracker/view/component/custom_buttom.dart';
import 'package:expense_tracker/view/component/custom_text_field.dart';
import 'package:expense_tracker/view/screens/auth/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 10,
            children: [
              Container(
                // margin: EdgeInsets.only(right: 300,),
                padding: EdgeInsets.all(8.0),
                // height: 50,
                // width: 250,
                decoration: BoxDecoration(
                  color: AppColors.greenColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  color: AppColors.whiteColor,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Create your Account",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Back up your expenses and use Kharcha on all your devices.",
                    style: TextStyle(
                      color: AppColors.subTextColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                spacing: 15,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Full Name", style: TextStyle(fontWeight: FontWeight.w600)),
                      CustomTextField(hintText: "your name"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email", style: TextStyle(fontWeight: FontWeight.w600)),
                      CustomTextField(hintText: "you@gmail.com"),
                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Password", style: TextStyle(fontWeight: FontWeight.w600)),
                      CustomTextField(hintText: "Enter your Password"),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Confirm Password", style: TextStyle(fontWeight: FontWeight.w600)),
                      CustomTextField(hintText: "Enter your Password"),
                    ],
                  ),
                ],
              ),
              // Align(
              //   alignment: Alignment.centerRight,
              //   child: Text(
              //     "forgot password",
              //     style: TextStyle(
              //       color: AppColors.greenColor,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 14,
              //     ),
              //   ),
              // ),

              CustomButtom(
                label: "Create Account",
                buttoncolor: AppColors.greenColor,
                buttonlabelcolor: AppColors.whiteColor,
              ),

              // Row(
              //   children: [
              //     Expanded(child: Divider(indent: 12 , endIndent: 12,)),
              //     Text("or"),
              //     Expanded(child: Divider(indent: 12, endIndent: 12,)),
              //   ],
              // ),
              // CustomButtom(
              //   label: "Sign up with Google",
              //   buttoncolor: AppColors.whiteColor, buttonlabelcolor: AppColors.textColor,
              // ),
               Center(
                child: RichText(
                  text: TextSpan(
                    text: 'Already have an Account? ',
                    style: TextStyle(color: AppColors.subTextColor, fontSize: 18),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginScreen(),
                              ),
                            );
                          },
                        text: 'Login',
                        style: TextStyle(
                          color: AppColors.greenColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
              
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Text(
              //       "Already have an Account?",
              //       style: TextStyle(
              //         fontSize: 15,
              //         fontWeight: FontWeight.normal,
              //         color: AppColors.subTextColor,
              //       ),
              //     ),
              //     Text(
              //       "Login",
              //       style: TextStyle(
              //         fontSize: 15,
              //         fontWeight: FontWeight.bold,
              //         color: AppColors.greenColor,
              //       ),
              //     ),
              //   ],
              // ),

              // TextField(
              //   decoration: InputDecoration(
              //     hint: "enter email",
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
