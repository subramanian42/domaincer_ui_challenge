import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  CustomFormField({
    Key? key,
    this.width,
    this.controller,
    this.label,
    this.isPassword = false,
    this.initialValue,
    this.onChanged,
    this.validator,
    this.hintText,
    this.suffixIcon,
    this.obscureText = false,
  }) : super(key: key);
  final TextEditingController? controller;
  final String? initialValue;
  final String? label;
  final bool isPassword;
  final String? hintText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  bool obscureText;
  final Widget? suffixIcon;
  final double? width;

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? 330,
      height: 50,
      child: TextFormField(
        obscureText: widget.obscureText,
        validator: widget.validator,
        textAlign: TextAlign.left,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: Theme.of(context).textTheme.headline3,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xffE5EBF0),
            ),
            borderRadius: BorderRadius.circular(6),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText;
                    });
                  },
                  icon: widget.obscureText
                      ? Icon(
                          Icons.visibility,
                          color: Colors.grey.shade700,
                        )
                      : Icon(
                          Icons.visibility_off,
                          color: Colors.grey.shade700,
                        ))
              : null,
        ),
      ),
    );
  }
}
