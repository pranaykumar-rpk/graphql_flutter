import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:graphql_example/global/app_colors.dart';
import 'package:graphql_example/global/constants.dart';
import 'package:graphql_example/global/runtime_configs.dart';
import 'package:graphql_example/global/styles.dart';

void showSnackBar(
    {required String title,
    Icon? icon,
    Color? color,
    Duration duration = const Duration(seconds: 2),
    SnackType type = SnackType.info,
    BuildContext? context,
    bool showProgressIndicator = false,
    Key? key}) {
  showFlash(
    context: context ?? RuntimeConfigs.navigatorKey.currentContext!,
    duration: duration,
    transitionDuration: const Duration(milliseconds: 350),
    builder: (context, controller) {
      return Flash(
        key: key,
        controller: controller,
        slideAnimationCreator:
            (context, position, parent, curve, reverseCurve) {
          return CurvedAnimation(
                  parent: parent, curve: curve, reverseCurve: reverseCurve)
              .drive(Tween<Offset>(
                  begin: Offset(
                    Directionality.of(context) == TextDirection.ltr
                        ? -1.0
                        : 1.0,
                    // -1.0,
                    0.0,
                  ),
                  end: Offset.zero));
        },
        position: FlashPosition.top,
        child: FlashBar(
          backgroundColor: color ?? type.bgColor,
          position: FlashPosition.top,
          controller: controller,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          icon: icon ?? type.icon,
          progressIndicatorBackgroundColor: AppColors.grey400,
          showProgressIndicator: showProgressIndicator,
          content: Text(
            title,
            style: snackDescription,
          ),
        ),
      );
    },
  );
}
