import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:hobin_app/responsive_widget.dart';
import 'package:hobin_app/common_object/app_colors.dart';
//chuyển trang
import 'package:flutter/gestures.dart';
import 'package:hobin_app/pages/auth/SignUp.dart';
import 'package:hobin_app/pages/auth/ForgotPass.dart';

import '../../common_object/app_icons.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  bool showpass = false;
  bool checkBoxRemember = false;
  @override
  Widget build(BuildContext context) {
    // set chiều cao, ngang full màn hình
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        //sắp xếp các widget theo chiều ngang
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //toán tử 3 ngôi: chia trang theo chiều ngang < 600 pixels
              //đúng thì trả sizebox rỗng, chạy dòng 39 (expanded thứ 2)
              //sai do full màn hình web chạy hình ảnh
              ResponsiveWidget.isSmallScreen(context)
                  ? const SizedBox()
                  : SizedBox(
                      width: screenWidth * 0.5625,
                      height: screenHeight,
                      child: const Image(
                        image: AssetImage('assets/images/signin.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
              //khi chạy full màn hình web
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: screenHeight * 0.1435),
                    Text(
                      'ĐĂNG NHẬP',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          fontSize: 40,
                          color: AppColors.purpleColor,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'Chào mừng đến với HOBIN',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          fontSize: 20,
                          color: AppColors.purpleColor,
                          fontWeight: FontWeight.w500),
                    ),
                    //====================USER NAME===========================
                    Padding(
                      padding: ResponsiveWidget.isSmallScreen(context)
                          ? const EdgeInsets.fromLTRB(30, 50, 30, 0)
                          : const EdgeInsets.fromLTRB(60, 20, 60, 0),
                      child: Form(
                        //bat loi form
                        key: _formKey,
                        child: TextFormField(
                          //dieu kien bat loi form
                          validator: (value) {
                            if (value!.isNotEmpty) {
                              return null;
                            } else {
                              return 'Vui lòng nhập SDT';
                            }
                          },
                          decoration: InputDecoration(
                            fillColor: AppColors.grayClolor,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: AppColors.grayClolor),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.purpleColor, width: 2),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.grayClolor, width: 2),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 255, 0, 0),
                                  width: 2),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            prefixIcon: const IconButton(
                              onPressed: null,
                              icon: Image(
                                image: AssetImage(AppIcons.phoneIcon),
                                fit: BoxFit.fill,
                                width: 27,
                              ),
                            ),
                            contentPadding: const EdgeInsets.only(top: 14),
                            labelText: 'Số điện thoại',
                            labelStyle: const TextStyle(
                              fontFamily: 'roboto',
                            ),
                          ),
                        ),
                      ),
                    ),
                    //====================PASSWORD===========================
                    Padding(
                      padding: ResponsiveWidget.isSmallScreen(context)
                          ? const EdgeInsets.fromLTRB(30, 20, 30, 0)
                          : const EdgeInsets.fromLTRB(60, 20, 60, 0),
                      child: Container(
                        height: 50.0,
                        width: screenWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.0),
                          color: AppColors.grayClolor,
                        ),
                        child: TextFormField(
                          obscureText: showpass,
                          decoration: InputDecoration(
                            fillColor: AppColors.grayClolor,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: AppColors.grayClolor),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.purpleColor, width: 2),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: AppColors.grayClolor, width: 2),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 255, 0, 0),
                                  width: 2),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            //con mat
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  showpass = !showpass;
                                });
                              },
                              icon: Image(
                                image: showpass
                                    ? const AssetImage(AppIcons.hiddenEye)
                                    : const AssetImage(AppIcons.eye),
                              ),
                            ),
                            //o khoa
                            prefixIcon: const IconButton(
                              onPressed: null,
                              icon: Image(
                                image: AssetImage(AppIcons.padLockIcon),
                                fit: BoxFit.fill,
                                width: 27,
                              ),
                            ),
                            contentPadding: const EdgeInsets.only(top: 14),
                            labelText: 'Mật khẩu',
                            labelStyle: const TextStyle(
                              fontFamily: 'roboto',
                            ),
                          ),
                        ),
                      ),
                    ),
                    //====================Checkbox Remember===================
                    Padding(
                      padding: ResponsiveWidget.isSmallScreen(context)
                          ? const EdgeInsets.fromLTRB(30, 5, 30, 0)
                          : const EdgeInsets.fromLTRB(60, 20, 60, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  checkColor: Colors.white,
                                  activeColor: AppColors.purpleColor,
                                  value: checkBoxRemember,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      checkBoxRemember = value!;
                                    });
                                  }),
                              Text(
                                'Nhớ mật khẩu',
                                style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  color: AppColors.textColor,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          //=================FORGOT PASSWORD==================
                          RichText(
                            text: TextSpan(
                              text: 'Quên mật khẩu?',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: AppColors.textColor,
                                fontWeight: FontWeight.w500,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ForgotPass()));
                                  });
                                },
                            ),
                          ),
                        ],
                      ),
                    ),
                    //====================SIGN IN=============================
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 60, 30, 30),
                      child: SizedBox(
                        width: ResponsiveWidget.isSmallScreen(context)
                            ? 250
                            : screenWidth * 0.1839,
                        height: ResponsiveWidget.isSmallScreen(context)
                            ? 50
                            : screenHeight * 0.089,
                        child: ElevatedButton(
                          onPressed: () {
                            if (!_formKey.currentState!.validate()) {
                              return;
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.purpleColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              )),
                          child: Text('Đăng Nhập',
                              style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  color: AppColors.whiteColor,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ),
                    //====================Route SignUP===============================
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                      child: RichText(
                        text: TextSpan(
                          text: 'Bạn chưa có tài khoản?',
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                            TextSpan(
                              text: ' Đăng kí',
                              style: GoogleFonts.roboto(
                                  fontSize: 16,
                                  color: AppColors.purpleColor,
                                  fontWeight: FontWeight.w600),
                              //chuyển trang
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  setState(() {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUpPage()));
                                  });
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
