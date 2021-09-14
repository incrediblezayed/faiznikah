import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileTextFeild extends TextFormField {
  ProfileTextFeild({
    required Function(String) onChanged,
    String? hintText,
    String? labelText,
    IconData? icon,
    TextInputType? keyboardType,
    InputDecoration? decoration,
    int? maxLength,
    String? Function(String?)? validator,
    Function()? onTap,
    TextEditingController? controller,
    List<TextInputFormatter>? inputFormatters,
    String? suffix,
    bool enabled = true,
  }) : super(
          enabled: enabled,
          onChanged: onChanged,
          controller: controller,
          onTap: onTap,
          maxLength: maxLength,
          validator: validator,
          inputFormatters: inputFormatters,
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
