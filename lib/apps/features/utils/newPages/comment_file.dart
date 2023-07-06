import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';

class TestMe extends StatefulWidget {
  const TestMe({super.key});

  @override
  _TestMeState createState() => _TestMeState();
}
class _TestMeState extends State<TestMe> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();
  List filedata = [
    {
      'name': 'Chuks Okwuenu',
      'pic': 'assets/images/boy_in_blue.png',
      'message': 'I love to code',
      'date': '2021-01-01 12:00:00'
    },
    {
      'name': 'Biggi Man',
      'pic': 'assets/images/child-christmas-baby-cute-37664.png',
      'message': 'Very cool',
      'date': '2021-01-01 12:00:00'
    },
    {
      'name': 'Tunde Martins',
      'pic': 'assets/images/Ellipse 8.png',
      'message': 'Very cool',
      'date': '2021-01-01 12:00:00'
    },
  
  ];
  Widget commentChild(data) {
    return ListView(
      children: [
        for (var i = 0; i < data.length; i++)
          Padding(
            padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
            child: ListTile(
              leading: GestureDetector(
                onTap: () async {
                 
                  print("Comment Clicked");
                },
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration:  const BoxDecoration(
                      color: Colors.blue,
                      borderRadius:  BorderRadius.all( Radius.circular(50))),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundImage: CommentBox.commentImageParser(
                          imageURLorPath: data[i]['pic'])),
                ),
              ),
              title: Text(
                data[i]['name'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(data[i]['message']),
              trailing: Text(data[i]['date'], style: TextStyle(fontSize: 10)),
            ),
          )
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CommentBox(
        userImage: CommentBox.commentImageParser(
            imageURLorPath: "assets/images/Ellipse 11.png"),
        labelText: 'Write a comment...',
        errorText: 'Comment cannot be blank',
        withBorder: false,
        sendButtonMethod: () {
          if (formKey.currentState!.validate()) {
            print(commentController.text);
            setState(() {
              var value = {
                'name': 'New User',
                'pic':
                    'assets/images/Ellipse 11.png',
                'message': commentController.text,
                'date': '2021-01-01 12:00:00'
              };
              filedata.insert(0, value);
            });
            commentController.clear();
            FocusScope.of(context).unfocus();
          } else {
            print("Not validated");
          }
        },
        formKey: formKey,
        commentController: commentController,
        backgroundColor: Colors.grey.shade200,
        textColor: Colors.black,
        sendWidget: const Icon(Icons.send_sharp, size: 30, color: Colors.white),
        child: commentChild(filedata),
      ),
    );
  }
}