import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hobin_app/common_object/app_colors.dart';
import 'package:hobin_app/responsive_widget.dart';

import '../../common_object/app_icons.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
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
                children: [
                  SizedBox(height: screenHeight * 0.1435),
                  Text(
                    'QUÊN MẬT KHẨU',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        fontSize: 30,
                        color: AppColors.purpleColor,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Nhập số điện thoại đã đăng ký',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                        fontSize: 20,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w400),
                  ),
                  //=======================Nhap SDT======================
                  Padding(
                    padding: ResponsiveWidget.isSmallScreen(context)
                        ? const EdgeInsets.fromLTRB(30, 50, 30, 0)
                        : const EdgeInsets.fromLTRB(60, 20, 60, 0),
                    child: Container(
                      height: 50.0,
                      width: screenWidth,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: AppColors.grayClolor,
                      ),
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: IconButton(
                              onPressed: null,
                              icon: Image(
                                image: AssetImage(AppIcons.phoneIcon),
                                fit: BoxFit.fill,
                                width: 27,
                              ),
                            ),
                            contentPadding: EdgeInsets.only(top: 14),
                            hintText: 'Số điện thoại',
                            hintStyle: TextStyle(
                              fontSize: 17,
                              color: AppColors.hintColor,
                              fontFamily: 'roboto',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 300),
                  //===================NUT TIEP THEO=======================
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
                ],
              ),
            ) //khi chạy full màn hình web
          ],
        ),
      ),
    );
  }
}
