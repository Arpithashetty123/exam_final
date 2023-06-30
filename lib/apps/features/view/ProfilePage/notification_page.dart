import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/apps/features/utils/pagestyle.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../myrouter/routes.dart';
import '../../utils/settingsPage/follows_widget.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int selectedIndex = 0;
  final List<String> categories = ['System', 'Follows', 'Likes', 'Comments'];
  final List<Widget> contentWidgets = [
    Text('System Content'),
    MyListView(),
    Text('Likes Content'),
    Text('Comments Content'),
  ];

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
           Navigator.pushNamed(context, MyRoutes.profilePage);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
            size: screenWidth * 0.075,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: screenWidth * 0.055,
            top: screenHeight * 0.03,
            right: screenWidth * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Notifications",
              style: verificationColour(),
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            Container(
              height: screenHeight * 0.068,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(screenHeight * 0.04),
                color: Color.fromARGB(255, 220, 246, 255),
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: screenHeight * 0.0125,
                          bottom: screenHeight * 0.0125),
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.05),
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? Color.fromRGBO(102, 211, 246, 1)
                              : Colors.transparent,
                          borderRadius:
                              BorderRadius.circular(screenHeight * 0.04),
                        ),
                        child: Text(
                          categories[index],
                          style: GoogleFonts.poppins(
                            color: selectedIndex == index
                                ? Colors.white
                                : Colors.black,
                            fontSize: screenWidth * 0.03,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            Expanded(
              child: contentWidgets[selectedIndex],
            ),
          ],
        ),
      ),
    );
  }
}
