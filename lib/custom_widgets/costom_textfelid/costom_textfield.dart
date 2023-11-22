import 'package:flutter/material.dart';
import '../ui_healper.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController? mController;
  Color mFillColor;
  IconData? mIcon;
  bool isPassword;
  String hint;

  CustomTextField(
      {super.key,
      required this.mController,
      required this.mFillColor,
      this.mIcon,
      required this.isPassword,
      required this.hint});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool passVisible = true;

  @override
  Widget build(BuildContext context) {
    final _isLight = Theme.of(context).brightness == Brightness.light;
    return widget.isPassword
        ? TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please fill this Field!!";
              } else {
                return null;
              }
            },
            controller: widget.mController,
            obscureText: !passVisible,
            obscuringCharacter: "*",
            cursorColor: Theme.of(context).brightness == Brightness.light
                ? MyColor.textWColor
                : MyColor.textBColor,
            style: mTextStyle16(
                mColor: Theme.of(context).brightness == Brightness.light
                    ? MyColor.textWColor
                    : MyColor.textBColor),
            decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: TextStyle(
                  color: _isLight ? MyColor.textWColor : MyColor.textBColor),
              prefixIcon: Icon(
                widget.mIcon,
                color: MyColor.secondaryBColor,
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: IconButton(
                  icon: passVisible
                      ? const Icon(
                          Icons.visibility_outlined,
                          color: MyColor.secondaryBColor,
                        )
                      : const Icon(
                          Icons.visibility_off_outlined,
                          color: MyColor.secondaryBColor,
                        ),
                  onPressed: () {},
                ),
              ),
              iconColor: Theme.of(context).colorScheme.background,
              prefixIconColor: Theme.of(context).colorScheme.background,
              fillColor: widget.mFillColor,
              filled: true,
              focusColor: Theme.of(context).colorScheme.background,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: BorderSide(
                    width: 1,
                    color: Theme.of(context).brightness == Brightness.light
                        ? MyColor.textBColor
                        : MyColor.textWColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1,
                    color: Theme.of(context).brightness == Brightness.light
                        ? MyColor.textWColor
                        : MyColor.textBColor),
                borderRadius: BorderRadius.circular(21),
              ),
            ),
          )
        : TextFormField(
            controller: widget.mController,
            cursorColor: Theme.of(context).brightness == Brightness.light
                ? MyColor.textWColor
                : MyColor.textBColor,
            style: mTextStyle16(
                mColor: Theme.of(context).brightness == Brightness.light
                    ? MyColor.textWColor
                    : MyColor.textBColor),
            decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: TextStyle(
                  color: _isLight ? MyColor.textWColor : MyColor.textBColor),
              prefixIcon: Icon(
                widget.mIcon,
                color: MyColor.secondaryBColor,
              ),
              iconColor: Theme.of(context).colorScheme.background,
              prefixIconColor: Theme.of(context).colorScheme.background,
              fillColor: widget.mFillColor,
              filled: true,
              focusColor: Theme.of(context).colorScheme.background,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: BorderSide(
                    width: 1,
                    color: Theme.of(context).brightness == Brightness.light
                        ? MyColor.textBColor
                        : MyColor.textWColor),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1,
                    color: Theme.of(context).brightness == Brightness.light
                        ? MyColor.textWColor
                        : MyColor.textBColor),
                borderRadius: BorderRadius.circular(21),
              ),
            ),
          );
  }
}
