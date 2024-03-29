import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:front/core/Theme/colors.dart';

class ChangeLangButton extends StatelessWidget {
  const ChangeLangButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50.h,
      left: 15.w,
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 35.h,
          width: 45.w,
          color: AppColors.blueDark,
          alignment: Alignment.center,
          child: Text(
            "controller.language!.languageCode.toUpperCase(",
            style: TextStyle(
                color: AppColors.white,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
