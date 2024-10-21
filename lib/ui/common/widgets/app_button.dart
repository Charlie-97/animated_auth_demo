import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../theming/app_colors.dart';
import '../theming/gradients.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    this.onTap,
    this.icon,
    this.isActive = true,
    this.height,
    this.width,
    this.color,
    required this.isPrimary,
  });
  final Widget text;
  final Function()? onTap;
  final Widget? icon;
  final bool isActive;
  final double? height;
  final double? width;
  final Color? color;
  final bool isPrimary;

  factory AppButton.primary({
    required Widget text,
    Function()? onTap,
    Widget? icon,
    bool isActive = true,
    double? height,
    double? width,
    Color? color,
  }) =>
      AppButton(
        text: text,
        onTap: onTap,
        icon: icon,
        isActive: isActive,
        height: height,
        width: width,
        color: color,
        isPrimary: true,
      );

  factory AppButton.secondary({
    required Widget text,
    Function()? onTap,
    Widget? icon,
    bool isActive = true,
    double? height,
    double? width,
    Color? color,
  }) =>
      AppButton(
        text: text,
        onTap: onTap,
        icon: icon,
        isActive: isActive,
        height: height,
        width: width,
        color: color,
        isPrimary: false,
      );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isActive ? onTap : null,
      child: Container(
        alignment: Alignment.center,
        height: height ?? 48,
        width: width ?? MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: color ??
              (!isPrimary
                  ? Colors.transparent
                  : (isActive ? null : Colors.grey)),
          gradient: isPrimary ? (isActive ? buttonGradient : null) : null,
          borderRadius: BorderRadius.circular(8),
          border: !isPrimary
              ? Border.all(
                  width: 1.5,
                  color: appPrimaryOrange,
                )
              : null,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            text,
            const Gap(4),
            icon ?? const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
