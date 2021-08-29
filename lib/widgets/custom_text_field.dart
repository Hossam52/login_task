import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.hintText,
      required this.icon,
      this.iconColor,
      this.obsecureText = false,
      this.validator,
      this.onChangeVisibilty,
      this.showPassword = false})
      : super(key: key);
  final String hintText;
  final IconData icon;
  final Color? iconColor;
  final bool obsecureText;
  final String? Function(String? text)? validator;
  final VoidCallback? onChangeVisibilty;
  final bool showPassword;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: showPassword,
      validator: validator,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          filled: true,
          fillColor: Colors.green.shade100,
          hintText: hintText,
          prefixIcon: Icon(icon),
          suffix: obsecureText
              ? GestureDetector(
                  onTap: onChangeVisibilty,
                  child: Icon(
                      showPassword ? Icons.visibility_off : Icons.visibility))
              : null),
    );
  }
}
