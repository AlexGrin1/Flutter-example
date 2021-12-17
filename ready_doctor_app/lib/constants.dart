import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

const primaryColor= Color(0xFF255ED6);
const textColor= Color(0xFF35364F);
const  backgroundColor= Color(0xFFE85050);
const redColor = Color(0xFFE85050);

const  defaultPadding = 16.0;

OutlineInputBorder textFieldBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: primaryColor.withOpacity(0.1)
  )
);

const emailError = "Enter a valid email address";
const requiredField = "THis field is required";

final passwordValidator = MultiValidator(
  [
    RequiredValidator(errorText: 'password is reqired'),
    MinLengthValidator(8, errorText: "password must be at least 8 digits long"),
    PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'PASSWORDS MUST HAVE ST'),
  ]
);