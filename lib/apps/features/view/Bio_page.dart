import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/view/set_user_name.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

class BioPage extends StatefulWidget {
   const BioPage({super.key});

  @override
  State<BioPage> createState() => _BioPageState();
}

class _BioPageState extends State<BioPage> {
  String bioText = '';
  final int maxCharacterCount = 150;

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
              Navigator.push(context,MaterialPageRoute(builder: (context) {
               return SetUserNamePage() ;
              },));
            },
            icon: const Icon(
              Feather.check,
              color: Colors.blue,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 50, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Bio",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 60),
            Expanded(
              
              child: TextField(
                expands: true,
                cursorColor: Colors.grey,
                onChanged: (value) {
                  setState(() {
                    bioText = value;
                  });
                },
                maxLines: null,
               decoration: InputDecoration(
                

                    focusedBorder:  OutlineInputBorder(
                      
                      borderRadius:BorderRadius.circular(30) ,
                        borderSide: BorderSide(color: Colors.black, width: 2)),
                   
                    
                    
                    border:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                  ),
              ),
            ),
            SizedBox(height: 10),
           
          ],
        ),
      ),
    );
  }
}
