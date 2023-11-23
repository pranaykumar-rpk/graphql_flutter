import 'package:flutter/material.dart';
import 'package:graphql_example/global/app_colors.dart';

enum SnackType {
  success,
  info,
  error,
}

extension SnackTypeData on SnackType {
  Icon get icon {
    switch (this) {
      case SnackType.error:
        return const Icon(
          Icons.error,
          color: AppColors.white,
        );
      case SnackType.success:
        return const Icon(Icons.check_circle, color: AppColors.white);
      default:
        return const Icon(
          Icons.info,
          color: AppColors.white,
        );
    }
  }

  Color get bgColor {
    switch (this) {
      case SnackType.error:
        return AppColors.error.withOpacity(0.9);
      case SnackType.success:
        return AppColors.primary.withOpacity(0.9);
      default:
        return AppColors.black.withOpacity(0.9);
    }
  }

  String get typeLabel {
    switch (this) {
      case SnackType.error:
        return 'Error';
      case SnackType.success:
        return 'Success';
      default:
        return 'Warning';
    }
  }
}