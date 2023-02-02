import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:hobin_app/common_object/app_colors.dart';
import 'package:hobin_app/responsive_widget.dart';
import '../../common_object/app_icons.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    // set chiều cao, ngang full màn hình
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    //khai báo con mắt
    bool showpass = false;
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
                        image: AssetImage('assets/images/signup.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
              //khi chạy full màn hình web
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: screenHeight * 0.1435),
                    Text(
                      'USER SIGNUP',
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
                                  image: AssetImage(AppIcons.userIcon),
                                  fit: BoxFit.fill,
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

                    // ========================= EMAIL ===========================
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
                                  image: AssetImage(AppIcons.EmailIcon),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              contentPadding: EdgeInsets.only(top: 14),
                              hintText: 'Email',
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
                    //============================PassWord================================================
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
                        child: Stack(
                          alignment: AlignmentDirectional.centerEnd,
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: IconButton(
                                  onPressed: null,
                                  icon: Image(
                                    image: AssetImage(AppIcons.padLockIcon),
                                    fit: BoxFit.fill,
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
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                              child: TextFormField(
                                obscureText: showpass,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        showpass = !showpass;
                                      });
                                    },
                                    icon: Image(
                                      image: showpass
                                          ? AssetImage(AppIcons.hiddenEye)
                                          : AssetImage(AppIcons.Eye),
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
              ),
            ]),
      ),
    );
  }
}
