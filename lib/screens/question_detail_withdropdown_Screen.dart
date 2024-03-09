import 'package:flutter/material.dart';

import '../models/model_question.dart';

class QuestionDetailWithDropdownScreen extends StatelessWidget {
  final String question;

  const QuestionDetailWithDropdownScreen({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Question Detail"),
      ),
      body: ListView.builder(
        itemCount: Questionlists.length,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  question,
                  textAlign: TextAlign.center,
                ),
              ),
            );
          } else {
            return Padding(
              padding: EdgeInsets.all(16.0),
              child: DropdownButton<String>(
                value: 'Select an option',
                onChanged: (String? newValue) {
                  // Handle dropdown value change if needed
                },
                items: <String>[
                  'Select an option',
                  'Option 1',
                  'Option 2',
                  'Option 3',
                  'Option 4',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            );
          }
        },
      ),
    );
  }
}
