// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages, sized_box_for_whitespace

import 'package:bootcamp/Register/register_view.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff008FA0),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 7.h, left: 7.w, right: 7.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hoşgeldin!",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  fontFamily: "Inter",
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                height: 72.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7.sp),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.w, top: 3.h),
                      child: Container(
                        height: 25.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/logo.png"),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 7.5.w, right: 7.5.w, top: 4.h),
                      child: GestureDetector(
                        child: Container(
                          height: 7.5.h,
                          decoration: BoxDecoration(
                              color: Color(0xff008FA0),
                              borderRadius: BorderRadius.circular(27.sp)),
                          child: Center(
                              child: Padding(
                            padding: EdgeInsets.all(6.sp),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ImageIcon(
                                  AssetImage(
                                    "assets/images/letter.png",
                                  ),
                                  color: Colors.white,
                                  size: 15.sp,
                                ),
                                Text(
                                  "OyunUygulama@bootcamp.com",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 9.5.sp,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Inter"),
                                ),
                                Icon(
                                  Icons.check_circle_outline,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          )),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 7.5.w, right: 7.5.w, top: 4.h),
                      child: SizedBox(
                        height: 7.5.h,
                        child: TextField(
                            obscureText: true,
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Inter",
                                color: Color(0xff1E1E1E)),
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.lock_open,
                                  size: 15.sp,
                                ),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                    borderSide: BorderSide(
                                        color: Color(0xff008FA0), width: 1)))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.w, right: 8.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                activeColor: Colors.white,
                                onChanged: (value) {},
                                checkColor: Color(0xff008FA0),
                                side: MaterialStateBorderSide.resolveWith(
                                    (states) => BorderSide(
                                        width: 1, color: Color(0xff008FA0))),
                              ),
                              Text(
                                "Beni Hatırla",
                                style: TextStyle(
                                    fontSize: 7.5.sp,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff585858)),
                              )
                            ],
                          ),
                          Text(
                            "Şifremi Unuttum",
                            style: TextStyle(
                                fontSize: 7.5.sp,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Inter",
                                color: Color(0xff585858)),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: 7.5.w, right: 7.5.w, top: 2.h),
                      child: GestureDetector(
                        child: Container(
                          height: 7.5.h,
                          decoration: BoxDecoration(
                              color: Color(0xff008FA0),
                              borderRadius: BorderRadius.circular(27.sp)),
                          child: Center(
                            child: Text(
                              "Giriş Yap",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Inter"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: (MediaQuery.of(context).size.width - 124) / 2.5,
                ),
                child: Container(
                  height: 4.h,
                  width: 30.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 5.h,
                        width: 7.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17.sp),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/images/google.png",
                            width: 5.w,
                            height: 3.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 5.h,
                        width: 7.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18.sp),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/images/facebook.png",
                            width: 5.w,
                            height: 3.h,
                          ),
                        ),
                      ),
                      Container(
                        height: 5.h,
                        width: 7.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(18.sp),
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/images/apple.png",
                            width: 5.w,
                            height: 3.h,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: (MediaQuery.of(context).size.width - 124) / 4,
                ),
                child: Row(
                  children: [
                    Text(
                      "Henüz hesabın yok mu?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Inter",
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterView(),
                              ));
                        },
                        child: Text(
                          "Buradan Kayıt Ol",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Inter"),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
