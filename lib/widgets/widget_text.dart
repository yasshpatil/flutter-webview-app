import 'package:flutter/material.dart';
import 'package:web_view/models/model.dart';

class WidgetText extends StatelessWidget {
  final String text;
  final EnumTextType textType;
  final bool? bold;
  final double? height, width;
  final EdgeInsets? margin, padding;
  final Color? color, highlight;
  final TextOverflow? textOverflow;
  final BorderRadius? borderRadius;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;
  final int? maxlines;
  const WidgetText({
    Key? key,
    required this.text,
    required this.textType,
    this.bold,
    this.height,
    this.width,
    this.margin,
    this.padding,
    this.color,
    this.highlight,
    this.textOverflow,
    this.borderRadius,
    this.textAlign,
    this.fontWeight,
    this.textDecoration,
    this.maxlines,
  }) : super(key: key);

  double getFontSize() {
    switch (textType) {
      case EnumTextType.display:
        return 42;
      case EnumTextType.bigTitle:
        return 30;
      case EnumTextType.title:
        return 24;
      case EnumTextType.subtitle:
        return 20;
      case EnumTextType.bigText:
        return 16;
      case EnumTextType.body:
        return 14;
      case EnumTextType.caption:
        return 12;
      default:
        return 14;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        color: highlight,
        borderRadius: borderRadius,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color ?? Theme.of(context).textTheme.bodyText1?.color,
          fontSize: getFontSize(),
          fontWeight: fontWeight ??
              (bold != null && bold == true
                  ? FontWeight.bold
                  : FontWeight.w500),
          decoration: textDecoration,
        ),
        textAlign: textAlign ?? TextAlign.left,
        maxLines: maxlines ?? 2,
        overflow: textOverflow ?? TextOverflow.ellipsis,
      ),
    );
  }
}
