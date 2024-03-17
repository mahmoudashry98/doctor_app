import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appHSpace(double height) {
  return SizedBox(
    height: height.h,
  );
}

Widget appVSpace(double width) {
  return SizedBox(
    width: width.w,
  );
}