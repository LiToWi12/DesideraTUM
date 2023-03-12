import 'package:desideratum/Quote.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  QuoteCard({required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[800],
              ),
            )
          ],
        ),
      ),
    );
  }
}