import 'package:flutter/material.dart';

class ResposiveWidget extends StatelessWidget {
  final Widget largeSreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  const ResposiveWidget({
    Key? key, required this.largeSreen, this.mediumScreen, this.smallScreen
    }):super(key: key);

  static bool isSmallScreen(BuildContext context){
    return MediaQuery.of(context).size.width < 500;
  }

  static bool isLargeScreen(BuildContext context){
    return MediaQuery.of(context).size.width > 1200;
  }

  static bool isMediumScreen(BuildContext context){
    return MediaQuery.of(context).size.width >= 500 &&
            MediaQuery.of(context).size.width < 1200;
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if (constraints.maxWidth > 1200){
          return largeSreen;
        }else if (constraints.maxWidth <=1200 && constraints.maxWidth>=500){
          return mediumScreen ?? largeSreen;
        }else{
          return smallScreen ?? largeSreen;
        }
      },
    );
  }
}
