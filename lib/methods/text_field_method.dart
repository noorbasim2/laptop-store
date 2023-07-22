  // ignore_for_file: non_constant_identifier_names

  import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

TextField TextFieldMethod({Color? prefixIconColor, String? hintText}) {
    return TextField(
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.transparent),
        ),
        prefixIconColor: prefixIconColor,
        prefixIcon: const Icon(
          Icons.search,
          size: 35,
        ),
        suffixIcon: const Icon(Icons.menu_open_sharp),
        suffixIconColor: const Color(0xffE42F45),
        hintText: hintText,
        hintStyle:   TextStyle(fontSize: 17.sp,color: Color(0xFF757575)),
        fillColor: Colors.white,
        filled: true,
      ),
    );
  }