import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:hobin_app/responsive_widget.dart';
import 'package:hobin_app/common_object/app_colors.dart';
//chuyển trang
import 'package:flutter/gestures.dart';
import 'package:hobin_app/pages/auth/SignUp.dart';

import '../../common_object/app_icons.dart';

class ConfirmForgotPass extends StatefulWidget {
  const ConfirmForgotPass({super.key});

  @override
  State<ConfirmForgotPass> createState() => _ConfirmForgotPassState();
}

class _ConfirmForgotPassState extends State<ConfirmForgotPass> {
  bool showpass = false;
  bool showpass1 = false;
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
                        image: AssetImage('assets/images/signup.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
              Expanded(
                child: Column(
                  //tu tren xuong duoi
                  mainAxisAlignment: MainAxisAlignment.start,
                  //tu trai sang phai
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 100),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'QUÊN MẬT KHẨU',
                        style: GoogleFonts.roboto(
                            fontSize: 30,
                            color: AppColors.purpleColor,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 40, 30, 0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Đặt lại mật khẩu:',
                          style: GoogleFonts.roboto(
                              fontSize: 17,
                              color: AppColors.textColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    // ======================PASSWORD=======================
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
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: TextFormField(
                            obscureText: showpass,
                            decoration: InputDecoration(
                              border: InputBorder.none,
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
                              hintText: 'Mật khẩu mới',
                              hintStyle: const TextStyle(
                                fontSize: 17,
                                color: AppColors.hintColor,
                                fontFamily: 'roboto',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    // ======================CONFIRMPASS====================
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
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: TextFormField(
                            obscureText: showpass1,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              //con mat
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    showpass1 = !showpass1;
                                  });
                                },
                                icon: Image(
                                  image: showpass1
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
                              hintText: 'Nhập lại mật khẩu',
                              hintStyle: const TextStyle(
                                fontSize: 17,
                                color: AppColors.hintColor,
                                fontFamily: 'roboto',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //===================NUT TIEP THEO=======================
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 300, 30, 30),
                        child: SizedBox(
                          width: ResponsiveWidget.isSmallScreen(context)
                              ? 250
                              : screenWidth * 0.1839,
                          height: ResponsiveWidget.isSmallScreen(context)
                              ? 50
                              : screenHeight * 0.089,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.purpleColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                )),
                            child: Text('Tiếp theo',
                                style: GoogleFonts.roboto(
                                    fontSize: 20,
                                    color: AppColors.whiteColor,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
