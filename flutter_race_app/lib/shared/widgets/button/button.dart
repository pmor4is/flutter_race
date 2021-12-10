import 'package:flutter/material.dart';
import 'package:flutter_race_app/shared/theme/app_theme.dart';

enum ButtonType { fill, outline, none }

class Button extends StatelessWidget {
  final String label;
  final ButtonType type;
  final Function () onTap;
  const Button({
    Key? key,
    required this.label,
    this.type = ButtonType.fill,
    required this.onTap,
  }) : super(key: key);

  TextStyle get textStyle {
    switch (type) {
      case ButtonType.fill:
        return AppTheme.textStyles.buttonBackgroundColor;
      case ButtonType.outline:
        return AppTheme.textStyles.buttonBoldTextColor;
      case ButtonType.none:
        return AppTheme.textStyles.buttonTextColor;
      default:
        throw "Invalid Button Type";
    }
  }

  BoxDecoration get boxDecoration {
    switch (type) {
      case ButtonType.fill:
        return BoxDecoration(
          color: AppTheme.colors.primary,
          borderRadius: BorderRadius.circular(10),
        );
      case ButtonType.outline:
        return BoxDecoration(
            color: Colors.transparent,
            border: Border.fromBorderSide(BorderSide(
              color: AppTheme.colors.border,
              width: 1.5,
            )));
      case ButtonType.none:
        return BoxDecoration(color: Colors.transparent);
      default:
        throw "Invalid Button Type";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 58,
        width: double.maxFinite,
        decoration: boxDecoration,
        child: Center(
            child: Text(
          label,
          style: textStyle,
        )),
      ),
    );
  }
}
