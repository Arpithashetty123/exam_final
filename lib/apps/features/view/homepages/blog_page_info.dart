import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
// ignore: must_be_immutable
class BlogDetailsPage extends StatelessWidget {
   BlogDetailsPage({super.key});
 String text = loremIpsum(words: 60, paragraphs: 3, initWithLorem: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
        
          Text(text)
        ],
      ) ,
    );
  }
}