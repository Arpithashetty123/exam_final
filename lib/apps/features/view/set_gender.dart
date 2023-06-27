import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/container_widget.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Bio_page.dart';

class SetGenderPage extends StatefulWidget {
  const SetGenderPage({super.key});

  @override
  State<SetGenderPage> createState() => _SetGenderPageState();
}

class _SetGenderPageState extends State<SetGenderPage> {
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
                    return BioPage();
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
              "set Your Gender",
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
                   
                    hintText: "Enter Your Gender",
                    hintStyle: GoogleFonts.poppins(color: Colors.grey.shade400),
                    
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),

              SizedBox(height: 100,),
             SizedBox(
  width: 400,
  child: TextField(
    
    decoration: InputDecoration(
       
      
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(color: Colors.black, width: 5),
      ),
      hintText: "Enter Your Gender",
      hintStyle: TextStyle(color: Colors.grey.shade400),
     prefix: Container(
        width: 50,
        height: 50,
        color: Colors.black,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  ),
),


            
          ]
           )
          
        ),
      );
  
  }
}
