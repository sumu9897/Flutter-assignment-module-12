import 'package:flutter/material.dart';
import 'package:practice_project/utils/screen_utils.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final DeviceType deviceType = ScreenUtils.getDeviceType(size.width);

    if (deviceType == DeviceType.mobile) {
      return mobile;
    } else if (deviceType == DeviceType.tablet) {
      return tablet ?? mobile;
    }
    return desktop;
  }
}
