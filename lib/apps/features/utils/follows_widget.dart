import 'package:flutter/material.dart';
class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
       ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
             
            ),
            title: Text('User ${index + 1}'),
            trailing: ElevatedButton(
              onPressed: () {
                // Add your follow logic here
              },
              child: Text('Follow'),
            ),
          );
        },
      
    );
  }
}
