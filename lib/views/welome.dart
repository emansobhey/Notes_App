import 'package:flutter/material.dart';
import 'package:note/views/Notes_view.dart';
import 'package:note/widgets/NotesViewBody.dart';
import 'package:note/widgets/customer_button.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Delayed navigation function
    void navigateToNextPage() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NotesViews()),
      );
    }

    // Delay duration in seconds
    const int delaySeconds = 8;

    // Schedule navigation after delay
    Future.delayed(Duration(seconds: delaySeconds), navigateToNextPage);

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/Daily Notes.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
