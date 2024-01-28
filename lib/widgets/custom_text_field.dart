import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.hintText,
    this.textAlign = TextAlign.start,
    this.keyboardType,
    required this.controller,
    this.labelText,
    this.borderRadius = 10,
    this.maxLines = 1,
    this.hintTextColor = Colors.transparent,
    this.hintTextSize,
    this.hintTextWeight = FontWeight.w500,
    this.fontFamily,
    this.obscureText = false,
    this.onValidate,
    this.prefixIcon,
    this.suffixText,
    this.isShadow = true,
    this.filled = true,
    this.isBorderSide = true,
    this.contentTopPadding = 0,
    this.contentLeftPadding = 20,
    this.contentRightPadding = 20,
    this.contentBottomPadding = 20,
    this.isEnabled = true,
    this.onChange,
    this.fillColor = Colors.white,
    this.suffixIcon,
    this.style,
    this.textColorStyle,
    this.onTap,
    this.readOnly,
  }) : super(key: key);

  final String? hintText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final double borderRadius;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? suffixText;
  final bool obscureText;
  final String? labelText;
  final String? fontFamily;
  final double? hintTextSize;
  final FontWeight? hintTextWeight;
  final Color? hintTextColor;
  final String? Function(String?)? onValidate;
  final String? Function(String)? onChange;
  final int? maxLines;
  final Color? fillColor;
  final bool? filled;
  final bool? isBorderSide;
  final bool? isShadow;
  final double? contentTopPadding;
  final double? contentLeftPadding;
  final double? contentRightPadding;
  final double? contentBottomPadding;
  final bool? isEnabled;
  final bool? readOnly;
  final TextAlign textAlign;
  final TextStyle? style;
  final Color? textColorStyle;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // border: Border.all(color: greenColor,width: 1),
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
        boxShadow: [
          isShadow == true
              ? const BoxShadow(
            color: Color(0x19161616),
            blurRadius: 10,
            offset: Offset(0, 5),
            spreadRadius: 0,
          )
              : const BoxShadow(
            offset: Offset(
              0.0,
              0,
            ), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
        onTap: onTap,
        readOnly: readOnly ?? false,
        autofocus: false,
        onChanged: onChange,
        textAlign: textAlign,
        enabled: isEnabled,
        maxLines: maxLines,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        // style: subHeading.copyWith(color: textColorStyle),
        validator: onValidate,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          hintText: hintText,
          suffixText: suffixText,
          labelStyle: TextStyle(
            color: hintTextColor,

            // height: 4,
          ),
          labelText: labelText,
          errorStyle: const TextStyle(
            color: Colors.red,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          prefixStyle: const TextStyle(),
          hintStyle: TextStyle(
              fontSize: 12,
              fontWeight: hintTextWeight,
              color: hintTextColor,
              fontFamily: 'SF Pro Text'),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          filled: filled,
          fillColor: fillColor,
          border: InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              borderRadius,
            ),
            borderSide: isBorderSide == true
                ? const BorderSide(
              color: Colors.transparent,
              width: 1,
            )
                : BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                borderRadius,
              ),
              borderSide: isBorderSide == true
                  ? const BorderSide(
                color: Colors.transparent,
                width: 1,
              )
                  : BorderSide.none),
          contentPadding: EdgeInsets.only(
            left: contentLeftPadding!,
            right: contentRightPadding!,
            top: contentTopPadding!,
            bottom: contentBottomPadding!,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              borderRadius,
            ),
            borderSide: isBorderSide == true
                ? const BorderSide(
              width: 1,
              color: Colors.transparent,
            )
                : BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              borderRadius,
            ),
            borderSide: BorderSide.none,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              borderRadius,
            ),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}