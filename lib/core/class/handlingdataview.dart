import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sewing_1/core/class/device_info_model.dart';

import '../constant/app_image_asset.dart' show AppImageAsset;
import '../widgets/device_info_widget.dart' show DeviceInfoWidget;
import 'status_request.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return DeviceInfoWidget(
      builder: (BuildContext context, DeviceInfoModel deviceInfoModel) {
        // debugPrint('deviceInfoModel: $deviceInfoModel');

        return statusRequest == StatusRequest.loading
            ? Center(
                child: Lottie.asset(AppImageAsset.loading,
                    width: deviceInfoModel.localWidth * 0.8 * 0.8,
                    height: deviceInfoModel.localHeight * 0.8 * 0.8))
            : statusRequest == StatusRequest.offlinefailure
                ? Center(
                    child: Lottie.asset(AppImageAsset.offline,
                        width: deviceInfoModel.localWidth * 0.8 * 0.8,
                        height: deviceInfoModel.localHeight * 0.8 * 0.8))
                : statusRequest == StatusRequest.serverfailure
                    ? Center(
                        child: Lottie.asset(AppImageAsset.server,
                            width: deviceInfoModel.localWidth * 0.8 * 0.8,
                            height: deviceInfoModel.localHeight * 0.8 * 0.8))
                    : statusRequest == StatusRequest.failure
                        ? Center(
                            child: Lottie.asset(AppImageAsset.noData,
                                width: deviceInfoModel.localWidth * 0.8 * 0.8,
                                height: deviceInfoModel.localHeight * 0.8 * 0.8,
                                repeat: true))
                        : widget;
      },
    );
  }
}

class GetHandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const GetHandlingDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    const localWidth = 50;
    const localHeight = 50;
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(AppImageAsset.loading,
                width: localWidth * 0.8, height: localHeight * 0.8))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: Lottie.asset(AppImageAsset.offline,
                    width: localWidth * 0.8, height: localHeight * 0.8))
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Lottie.asset(AppImageAsset.server,
                        width: localWidth * 0.8, height: localHeight * 0.8))
                : statusRequest == StatusRequest.failure
                    ? Center(
                        child: Lottie.asset(AppImageAsset.noData,
                            width: localWidth * 0.8,
                            height: localHeight * 0.8,
                            repeat: true))
                    : statusRequest == StatusRequest.success
                        ? widget
                        : widget;
  }
}

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequest(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? Center(
            child: Lottie.asset(AppImageAsset.loading, width: 250, height: 250))
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: Lottie.asset(AppImageAsset.offline,
                    width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Lottie.asset(AppImageAsset.server,
                        width: 250, height: 250))
                : widget;
  }
}
