import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:hobin_app/responsive_widget.dart';
import 'package:hobin_app/common_object/app_colors.dart';

import '../../common_object/app_icons.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    // set chiều cao, ngang full màn hình
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
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
                      'USER SIGNIN',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 40,
                          color: AppColors.purpleColor,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Welcome to HOBIN',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: AppColors.purpleColor,
                          fontWeight: FontWeight.w400),
                    ),
                    //====================USER NAME===========================
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
                                    image: AssetImage(AppIcons.userIcon),
                                    fit: BoxFit.fill,
                                    width: 27,
                                  ),
                                ),
                                contentPadding: EdgeInsets.only(top: 14),
                                hintText: 'Username',
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.hintColor,
                                  fontFamily: 'poppins',
                                ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //====================PASS WORD===========================
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
                          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: IconButton(
                                  onPressed: null,
                                  icon: Image(
                                    image: AssetImage(AppIcons.padLockIcon),
                                    fit: BoxFit.fill,
                                    width: 27,
                                  ),
                                ),
                                contentPadding: EdgeInsets.only(top: 14),
                                hintText: 'Password',
                                hintStyle: TextStyle(
                                  fontSize: 16,
                                  color: AppColors.hintColor,
                                  fontFamily: 'poppins',
                                ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //====================SIGN IN=============================
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 60, 30, 30),
                      child: SizedBox(
                        width: ResponsiveWidget.isSmallScreen(context)? 250 : screenWidth * 0.1839,
                        height: ResponsiveWidget.isSmallScreen(context)? 50 : screenHeight * 0.089,
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.purpleColor,
                            shape:  RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            )
                          ), 
                          child: Text(
                            'SIGNIN',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: AppColors.whiteColor,
                              fontWeight: FontWeight.w600)
                          ),
                        ),
                      ),
                    ),
                    //====================TITLE===============================
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
                      child: RichText(
                        text: TextSpan(
                          text:'Do not have an account?',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w600,
                          ),
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
