import 'package:flutter/material.dart';
import '../core/constants/colors.dart';

class SemiBoldText extends StatelessWidget {
  const SemiBoldText({Key? key, required this.text, this.color, this.fontSize, this.textAlign})
      : super(key: key);
  final String text;
  final Color? color;
  final double? fontSize;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? const Color(0xFF1F223D),
          fontSize: fontSize ?? 32.0,
          fontWeight: FontWeight.w600,
          height: 1.2),
      textAlign: textAlign ?? TextAlign.center,
    );
  }
}

class BoldText extends StatelessWidget {
  const BoldText({Key? key, required this.text, required this.color})
      : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: 22.0,
          fontWeight: FontWeight.w700,
          height: 1.2),
      textAlign: TextAlign.center,
    );
  }
}

class MediumText extends StatelessWidget {
  const MediumText({Key? key, required this.text, this.color, this.fontSize})
      : super(key: key);
  final String text;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? Colors.white,
          fontSize: fontSize ?? 10.0,
          fontWeight: FontWeight.w500,
          height: 1.2),
      textAlign: TextAlign.center,
    );
  }
}

class RegularText extends StatelessWidget {
  const RegularText({Key? key, required this.text, this.color, this.fontSize})
      : super(key: key);
  final String text;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color ?? mSemiBlackColor,
          fontSize: fontSize ?? 13.0,
          fontWeight: FontWeight.w400,
          height: 1.2),
      textAlign: TextAlign.center,
    );
  }
}

class SeeAll extends StatelessWidget {
  const SeeAll({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){

      },
      child: const Text(
        'View All',
        style: TextStyle(
            color: redColor,
            fontSize: 13.0,
            fontWeight: FontWeight.w500,
            height: 1.1),
        textAlign: TextAlign.center,
      ),
    );
  }
}