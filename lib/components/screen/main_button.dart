import 'package:calorie_counter_and_tracker/infrastructure/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainButton extends StatelessWidget {
  final String? title;
  final Color? backgroundColor;
  final IconData? icon;
  final VoidCallback? onPress;
  final bool? isEnabled;
  final double? width;
  final double? height;
  final TextStyle? textStyle;

  const MainButton(
      {super.key,
      this.backgroundColor,
      this.icon,
      this.isEnabled,
      this.onPress,
      this.title,
      this.width,
      this.height,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled == true ? onPress : null,
      child: Container(
        padding: EdgeInsets.all(15.0.sp),
        width: width == null ? double.infinity : width!,
        height: height == null ? 70.0.sp : height!,
        decoration: BoxDecoration(
          color: isEnabled == false
              ? Color(0xFFCACACA)
              : backgroundColor == null
                  ? kMainButtonBackGroundColor
                  : backgroundColor!,
          borderRadius: BorderRadius.all(
            Radius.circular(
              10.0.sp,
            ),
          ),
        ),
        child: Container(
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title!,
                  style: kPoppins18_600,
                  textAlign: TextAlign.center,
                ),
              ),
              icon == null
                  ? SizedBox(
                      height: 1.0.sp,
                    )
                  : Icon(
                      icon,
                      size: 26.sp,
                      color: Colors.white,
                    )
            ],
          ),
        ),
      ),
    );
  }
}
