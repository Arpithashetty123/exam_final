import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/view/set_user_name.dart';

import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Bio_page.dart';

class SetNamePage extends StatefulWidget {
  const  SetNamePage({super.key});

  @override
  State< SetNamePage> createState() => _SetNamePageState();
}

class _SetNamePageState extends State< SetNamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.blue,
        ),
        actions: [
          IconButton(
            onPressed: () {
              
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SetUserNamePage();
            },));
            },icon: Icon( Feather.check,
            color: Colors.blue,),
           
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 50,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Set Your Name",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 60,
            ),
          SizedBox(
                width: 400,
                child: TextField(
                  decoration: InputDecoration(

                    focusedBorder:  OutlineInputBorder(
                      borderRadius:BorderRadius.circular(30) ,
                        borderSide: BorderSide(color: Colors.black, width: 5)),
                   
                    hintText: "Enter Yourn Nme",
                    hintStyle: GoogleFonts.poppins(color: Colors.grey.shade400),
                    
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),
            
          ]
           )
          
        ),
      );
  
  }
}
