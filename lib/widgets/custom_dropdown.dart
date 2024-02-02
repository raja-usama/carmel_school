
import 'package:carmelschool/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomDropDown extends StatelessWidget {
  final String? value;
  final void Function(String?)? onChanged;
  final List list;
  final double borderRadius;
  final Widget? suffixIcon;
  final Widget? icon;
  final Widget? prefixIcon;
  final bool isSuffixIcon;
  final bool isPrefixIcon;
  final String? Function(String?)? validator;
  final bool isBorder;
  final bool? filled;
  final double elevation;
  final Color? fillColor;
  final double rightContentPadding;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final String? fontFamily;
  final bool isNewItemList;
  final void Function()? onTap;

  CustomDropDown({
    Key? key,
    required this.value,
    required this.list,
    required this.onChanged,
    this.borderRadius = 10,
    this.isSuffixIcon = true,
    this.suffixIcon,
    this.isPrefixIcon = false,
    this.prefixIcon,
    this.validator,
    this.isBorder = false,
    this.filled = false,
    this.elevation = 0,
    this.fillColor = white,
    this.rightContentPadding = 0,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
    this.color = blue,
    this.fontFamily = 'SF Pro Text',
    this.isNewItemList = false,
    this.onTap,
    this.icon = const Icon(
      Icons.keyboard_arrow_down_outlined,
      size: 30,
      color: blue,
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      color: fillColor,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: fillColor,
          border: isBorder == true
              ? Border.all(color: blue, width: 1)
              : null,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButtonFormField(
              onChanged: onChanged,
              hint: Text(
                value!,
                style: TextStyle(
                  fontSize: fontSize,
                  fontFamily: fontFamily,
                  fontWeight: fontWeight,
                  color: color,
                ),
              ),
              isExpanded: true,
              menuMaxHeight: Get.height / 2.5,
              iconEnabledColor: blue,
              iconDisabledColor: blue,
              dropdownColor: fillColor,
              decoration: InputDecoration(
                isCollapsed: true,
                filled: filled,
                fillColor: fillColor,
                isDense: true,
                suffixIcon: isSuffixIcon == true ? suffixIcon : null,
                prefixIcon: isPrefixIcon == true ? prefixIcon : null,
                alignLabelWithHint: true,
                contentPadding: EdgeInsets.only(
                  left: 0,
                  top: 12,
                  bottom: 12,
                  right: rightContentPadding,
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              borderRadius: BorderRadius.circular(borderRadius),
              icon: icon,
              validator: validator,
              items: list.map((value) {
                return DropdownMenuItem<String>(
                  onTap: onTap,
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontFamily: fontFamily,
                      fontWeight: fontWeight,
                      color: blue,
                    ),
                  ),
                );
              }).toList()),
        ),
      ),
    );
  }
}
