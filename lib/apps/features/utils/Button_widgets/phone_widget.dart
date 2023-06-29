import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

Widget phoneNumberWidget(BorderRadius BorderRadius,) {
  return  IntlPhoneField(
                showDropdownIcon: false,
                showCountryFlag: false,
                disableLengthCheck: true,
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  enabledBorder:  OutlineInputBorder(
                    borderRadius:BorderRadius,
                    borderSide: BorderSide(width: 3,color: Colors.black)
                  ),
                    border: OutlineInputBorder(
                       borderRadius: BorderRadius
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:  BorderSide(color: Colors.blue, width: 3),
                      borderRadius:BorderRadius)
                ),
                initialCountryCode: ' IN',
              dropdownTextStyle: TextStyle(fontSize: 20),
              
              
            );
            
}