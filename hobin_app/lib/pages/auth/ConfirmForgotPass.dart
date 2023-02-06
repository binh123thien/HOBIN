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
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'QUÊN MẬT KHẨU',
                        style: GoogleFonts.roboto(
                            fontSize: 30,
                            color: AppColors.purpleColor,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'QUÊN MẬT KHẨU',
                        style: GoogleFonts.roboto(
                            fontSize: 30,
                            color: AppColors.purpleColor,
                            fontWeight: FontWeight.w600),
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
