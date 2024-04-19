import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String title;

  const ResultsPage({
    Key? key, 
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Results'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                '67%',
                style: TextStyle(
                  fontSize: 48, // Large text size for the percentage
                  fontWeight: FontWeight.bold,
                  color: Colors.blue, // Makes the percentage stand out
                ),
              ),
              SizedBox(height: 20), // Space between the heading and the paragraph
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16, // Suitable text size for body text
                ),
              ),
              SizedBox(height: 30), // Space between the text and the button
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home'); // Assumes '/home' is a defined route
                },
                child: Text('Go to My Home Page'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Button color
                  foregroundColor: Colors.white, // Text color
                  textStyle: TextStyle(
                    fontSize: 18,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
