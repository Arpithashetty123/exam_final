import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

Widget phoneNumberWidget() {
  return  IntlPhoneField(
                showDropdownIcon: false,
                showCountryFlag: false,
                disableLengthCheck: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(color: Colors.blue, width: 3),
                      borderRadius: BorderRadius.circular(10))
                ),
                initialCountryCode: 'IN',
              
            );
            
}