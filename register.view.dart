// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../Login/login_view.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60.h, right: 0.1.w, left: 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/ion_earth.png"),
                      fit: BoxFit.fill)),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              'assets/images/ion2.png',
              height: 30.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 4.5.w, right: 20.w),
                    child: Text(
                      "Lezzet Turuna Çıkmaya Hazır mısın?",
                      style: TextStyle(
                          fontSize: 21.sp,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Image.asset(
                    "assets/images/logo.png",
                    width: 55.w,
                    height: 26.h,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 4.5.w, right: 4.5.w),
                    child: Column(
                      children: [
                        AuthField(
                          label: "E-mail",
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        AuthField(label: "Kullanıcı Adı"),
                        SizedBox(
                          height: 2.h,
                        ),
                        AuthField(
                          label: "Şifre",
                          obscure: true,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 3.w, right: 5.w),
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
                    padding: EdgeInsets.only(left: 8.w, right: 8.w),
                    child: GestureDetector(
                      child: Container(
                        height: 7.5.h,
                        decoration: BoxDecoration(
                            color: Color(0xff008FA0),
                            borderRadius: BorderRadius.circular(27.sp)),
                        child: Center(
                          child: Text(
                            "Kayıt Ol",
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
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    "Zaten Hesabım Var",
                    style: TextStyle(
                        fontSize: 7.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Inter",
                        color: Color(0xff585858)),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 8.w, right: 8.w, bottom: 3.h),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginView()));
                      },
                      child: Container(
                        height: 7.5.h,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Color(0xff008FA0), width: 1),
                            borderRadius: BorderRadius.circular(27.sp)),
                        child: Center(
                          child: Text(
                            "Giriş Yap",
                            style: TextStyle(
                                color: Color(0xff008FA0),
                                fontSize: 15,
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
          ),
        ],
      ),
    );
  }
}

class AuthField extends StatelessWidget {
  const AuthField({
    super.key,
    required this.label,
    this.obscure,
  });
  final String label;
  final bool? obscure;

  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: obscure != null ? obscure! : false,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            fontFamily: "Inter",
            color: Color(0xff1E1E1E)),
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.check_circle_outline,
              color: Color(0xff008FA0),
              size: 30,
            ),
          ),
          label: Text(label),
          labelStyle: TextStyle(
              fontSize: 12,
              fontFamily: "Inter",
              fontWeight: FontWeight.w700,
              color: Color(0xff585858)),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xff008FA0), width: 2)),
        ));
  }
}
