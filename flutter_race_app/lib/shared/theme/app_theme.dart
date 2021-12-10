import 'package:flutter/widgets.dart';
import 'package:flutter_race_app/shared/theme/app_colors.dart';
import 'package:flutter_race_app/shared/theme/app_text_styles.dart';

export 'app_text.dart';

class AppTheme {
  static final AppTheme _instance = AppTheme();
  
  final _colors = AppColors();
  static AppColors get colors => _instance._colors;

  final _textStyles = AppTextStyles();
  static AppTextStyles get textStyles => _instance._textStyles;
}