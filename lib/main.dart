import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        title: 'FLutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.nunitoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
      designSize: Size(360, 640),
    );
  }
}

class HomePage extends StatelessWidget {
  final purpleColor = Color(0xff6688FF);
  final darkTextColor = Color(0xff1F1A3D);
  final lightTextColor = Color(0xff999999);
  final textFieldColor = Color(0xffF5F6FA);
  final borderColor = Color(0xffD9D9D9);

  Widget getTextField({required String hint}) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 14.h,
        ),
        filled: true,
        fillColor: textFieldColor,
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 52.h,
              ),
              Text(
                "Sign Up to Tokiped",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: darkTextColor,
                ),
              ),
              SizedBox(height: 4.h),
              Wrap(
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: lightTextColor,
                    ),
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: purpleColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              getTextField(hint: "Full Name"),
              SizedBox(height: 16.h),
              getTextField(hint: "Email"),
              SizedBox(height: 16.h),
              getTextField(hint: "Password"),
              SizedBox(height: 16.h),
              getTextField(hint: "Confirm password"),
              SizedBox(height: 16.h),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Create Account",
                    // style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(purpleColor),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 14.h),
                      ),
                      textStyle: MaterialStateProperty.all(TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ))),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  Expanded(child: Divider()),
                  SizedBox(width: 16.w),
                  Text(
                    "Or Sign up via",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: lightTextColor,
                    ),
                  ),
                  SizedBox(width: 16.w),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/google.png",
                        height: 14.h,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text("Google"),
                    ],
                  ),
                  style: ButtonStyle(
                      side: MaterialStateProperty.all(BorderSide(
                        color: borderColor,
                      )),
                      foregroundColor: MaterialStateProperty.all(darkTextColor),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 14.h)),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                ),
              ),
              SizedBox(height: 16.h),
              Wrap(
                children: [
                  Text(
                    "By signing up to Tokiped you agree to our ",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: lightTextColor,
                    ),
                  ),
                  Text(
                    "terms and conditions",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: purpleColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
