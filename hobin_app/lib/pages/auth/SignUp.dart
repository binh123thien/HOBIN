import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:hobin_app/common_object/app_colors.dart';
import 'package:hobin_app/responsive_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    // set chiều cao, ngang full màn hình
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        height: screen_height,
        width: screen_width,
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
                  : Expanded(
                      child: Container(
                        height: screen_height,
                        child: const Image(
                          image: AssetImage('assets/images/signin.png'),
                        ),
                      ),
                    ),
              //khi chạy full màn hình web
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'USER SIGN IN',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 50, color: AppColors.purpleColor),
                    )
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}