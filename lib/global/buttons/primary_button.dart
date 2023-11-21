import 'package:flutter/material.dart';
import 'package:graphql_example/global/app_colors.dart';

class PrimaryButton extends StatelessWidget {
  final Function onPressed;
  final Widget? child;
  final double? height;
  final double? width;
  final double borderRadius;
  final Color? backgroundColor;
  final LinearGradient? linearGradient;
  final bool isDisabled;
  final bool isLoading;
  final Color? splashColor;
  final Widget? loader;
  final bool isFullWidth;

  const PrimaryButton({
    Key? key,
    this.height = 65,
    required this.onPressed,
    this.child,
    this.width,
    this.borderRadius = 8,
    this.backgroundColor,
    this.linearGradient,
    this.isDisabled = false,
    this.isLoading = false,
    this.splashColor,
    this.loader,
    this.isFullWidth = true,
  }) : super(key: key);

  void _handleButtonPress() {
    if (isDisabled == false) {
      onPressed!();
    }
  }

  BoxDecoration _handleBoxDecoration(context) {
    if (isDisabled) {
      return BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: AppColors.ashGrey);
    } else if (backgroundColor != null) {
      return BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: backgroundColor,
      );
    } else if (linearGradient != null) {
      return BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        gradient: linearGradient,
      );
    } else {
      return BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Theme.of(context).primaryColor,
      );
    }
  }

  Color _handleSplashColor() {
    if (!isDisabled) {
      return splashColor ?? Colors.grey.withOpacity(0.5);
    } else {
      return Colors.transparent;
    }
  }

  Color? _handleHighlightColor() {
    if (isDisabled) {
      return Colors.transparent;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: height,
      width: width,
      decoration: _handleBoxDecoration(context),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: _handleButtonPress,
          borderRadius: BorderRadius.circular(borderRadius),
          splashColor: _handleSplashColor(),
          highlightColor: _handleHighlightColor(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: isFullWidth
                ? Center(
                    child: isLoading
                        ? loader ??
                            const SizedBox(
                              height: 20,
                              width: 20,
                              child: CircularProgressIndicator(
                                valueColor:
                                    AlwaysStoppedAnimation<Color>(Colors.white),
                              ),
                            )
                        : child,
                  )
                : isLoading
                    ? loader ??
                        const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        )
                    : Align(
                        alignment: Alignment.center,
                        widthFactor: 1,
                        child: child,
                      ),
          ),
        ),
      ),
    );
  }
}
