import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../class/device_info_model.dart' show DeviceInfoModel;
import 'get_device_type.dart' show getDeviceType;

class DeviceInfoWidget extends StatelessWidget {
  const DeviceInfoWidget({super.key, required this.builder});
  final Widget Function(BuildContext context, DeviceInfoModel deviceInfoModel)
      builder;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, constraints) {
      final mediaQueryData = MediaQuery.of(context);
      var deviceInfoModel = DeviceInfoModel(
          orientation: mediaQueryData.orientation,
          deviceType: getDeviceType(mediaQueryData),
          screenWidth: mediaQueryData.size.width.w,
          screenHeight: mediaQueryData.size.height.h,
          localWidth: constraints.maxWidth.w,
          localHeight: constraints.maxHeight.h);
      return builder(context, deviceInfoModel);
    });
  }
}
