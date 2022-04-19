import 'package:flutter/material.dart';
import 'package:timer/constants.dart';

class TimerButtonValue extends StatelessWidget {
  const TimerButtonValue({
    Key? key,
    this.text,
    this.icon,
    this.buttonColor,
    this.textColor,
    this.onLongPress,
    required this.onTap,
  }) : super(key: key);

  final double buttonSize = kDefaultPadding * 2.5;

  final String? text;
  final IconData? icon;
  final VoidCallback onTap;
  final VoidCallback? onLongPress;
  final Color? buttonColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Container(
        width: buttonSize,
        height: buttonSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: (buttonColor != null)
              ? buttonColor
              : AppColors.kNumberButtonColor,
        ),
        child: Center(
          child: (text != null)
              ? Text(
                  text!,
                  style: TextStyle(
                    fontSize: 36,
                    color: (buttonColor != null)
                        ? buttonColor
                        : AppColors.kTextColor,
                  ),
                )
              : Icon(icon),
        ),
      ),
    );
  }
}
