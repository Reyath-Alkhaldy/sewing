import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../enum/enums.dart' show DeviceTypeEnum;

class DeviceInfoModel extends Equatable {
  final Orientation orientation;
  final DeviceTypeEnum deviceType;
  final double screenWidth;
  final double screenHeight;
  final double localWidth;
  final double localHeight;
  const DeviceInfoModel({
    required this.orientation,
    required this.deviceType,
    required this.screenWidth,
    required this.screenHeight,
    required this.localWidth,
    required this.localHeight,
  });

  DeviceInfoModel copyWith({
    Orientation? orientation,
    DeviceTypeEnum? deviceType,
    double? screenWidth,
    double? screenHeight,
    double? localWidth,
    double? localHeight,
  }) {
    return DeviceInfoModel(
      orientation: orientation ?? this.orientation,
      deviceType: deviceType ?? this.deviceType,
      screenWidth: screenWidth ?? this.screenWidth,
      screenHeight: screenHeight ?? this.screenHeight,
      localWidth: localWidth ?? this.localWidth,
      localHeight: localHeight ?? this.localHeight,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      orientation,
      deviceType,
      screenWidth,
      screenHeight,
      localWidth,
      localHeight,
    ];
  }
}
