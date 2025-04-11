import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../enum/enums.dart' show DeviceTypeEnum;

DeviceTypeEnum getDeviceType(MediaQueryData mediaQueryData) {
  Orientation orientation = mediaQueryData.orientation;
  double width = 0;
  if (orientation == Orientation.landscape) {
    width = mediaQueryData.size.height.h;
  } else {
    width = mediaQueryData.size.width.w;
  }
  if (width >= 950.w) return DeviceTypeEnum.desktop;
  if (width >= 600.w) return DeviceTypeEnum.tablet;
  return DeviceTypeEnum.phone;
}
