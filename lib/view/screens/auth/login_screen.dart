import 'package:expense_tracker/utils/app_assets.dart';
import 'package:expense_tracker/utils/app_colors.dart';
import 'package:expense_tracker/view/component/custom_buttom.dart';
import 'package:expense_tracker/view/component/custom_text_field.dart';
import 'package:expense_tracker/view/screens/auth/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              Container(


                // margin: EdgeInsets.only(left: 10,top: 10),
                padding: EdgeInsets.all(8.0),
                // height: 50,
                // width: 250,
                decoration: BoxDecoration(
                  color: Color(0xFF0B7A5A),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Image.asset(AppAssets.walletIcon, scale: 1.5),
              ),
              Column(
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Login in to see tour expense",
                    style: TextStyle(
                      color: AppColors.subTextColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 2,
                    children: [
                      Text("Email", style: TextStyle(fontWeight: FontWeight.w600)),
                      CustomTextField(
                        hintText: "you@gmail.com",
                        prefixIcon: Icons.email,
                      ),
                    ],
                  ),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 2,
                    children: [
                      Text("Password", style: TextStyle(fontWeight: FontWeight.w600)),
                      CustomTextField(
                        hintText: "Enter your Password",
                        suffixIcon: Icons.remove_red_eye,
                      ),
                    ],
                  ),
                  
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "forgot password",
                      style: TextStyle(
                        color: AppColors.greenColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButtom(
                    label: "Log in",
                    buttoncolor: AppColors.greenColor,
                    buttonlabelcolor: AppColors.whiteColor,
                  ),
                  
                  Row(
                    children: [
                      Expanded(child: Divider(indent: 12, endIndent: 12)),
                      Text("or"),
                      Expanded(child: Divider(indent: 12, endIndent: 12)),
                    ],
                  ),
                  CustomButtom(
                    label: "Sign up with Google",
                    buttoncolor: AppColors.whiteColor,
                    buttonlabelcolor: AppColors.textColor,
                  ),
                ],
              ),

              Center(
                child: RichText(
                  text: TextSpan(
                    text: 'New to Kharcha? ',
                    style: TextStyle(color: AppColors.subTextColor, fontSize: 18),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupScreen(),
                              ),
                            );
                          },
                        text: 'Create account',
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
              //       "New to Kharcha?",
              //       style: TextStyle(
              //         fontSize: 15,
              //         fontWeight: FontWeight.normal,
              //         color: AppColors.subTextColor,
              //       ),
              //     ),

              //     const SizedBox(width: 5),

              //     GestureDetector(
              //       onTap: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => const SignupScreen(),
              //           ),
              //         );
              //       },
              //       child: Text(
              //         "Create Account",
              //         style: TextStyle(
              //           fontSize: 15,
              //           fontWeight: FontWeight.bold,
              //           color: AppColors.greenColor,
              //         ),
              //       ),
              //     ),
              //   ],
              // ),

              // Row(
              //   children: [
              //     Text(
              //       "New to Kharcha?",
              //       style: TextStyle(
              //         fontSize: 10,
              //         fontWeight: FontWeight.normal,
              //         color: AppColors.subTextColor,
              //       ),
              //     ),
              //     const SizedBox(width: 5),
              //     GestureDetector(
              //       onTap: () {
              //         Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => const SignupScreen(),
              //           ),
              //         );
              //       },
              //     ),
              //     Text(
              //       "Create Account",
              //       style: TextStyle(
              //         fontSize: 10,
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
