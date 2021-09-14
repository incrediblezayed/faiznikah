import 'package:flutter/material.dart';

class ProfileTextFeild extends TextFormField {
  ProfileTextFeild({
    required Function(String) onChanged,
    String? hintText,
    String? labelText,
    IconData? icon,
    TextInputType? keyboardType,
    InputDecoration? decoration,
    int? maxLength,
    Function()? onTap,
    TextEditingController? controller,
    String? suffix,
    bool enabled = true,
  }) : super(
          enabled: enabled,
          onChanged: onChanged,
          controller: controller,
          onTap: onTap,
          maxLength: maxLength,
          textInputAction: TextInputAction.next,
          keyboardType: keyboardType,
          decoration: decoration ??
              InputDecoration(
                icon: icon != null ? Icon(icon) : null,
                hintText: hintText,
                labelText: labelText,
                suffixText: suffix,
              ),
        );
}
