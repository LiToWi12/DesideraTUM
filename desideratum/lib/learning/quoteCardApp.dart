import 'package:desideratum/learning/Quote.dart';
import 'package:desideratum/learning/quote_card.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'Ihr gehört alle erschossen', author: 'Räcke'), 
    Quote(text: 'Sonst stürzen Flugzeuge ab', author: 'Wille'), 
    Quote(text: 'Noich', author: 'Aaron')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('DesideraTUM'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((q) => QuoteCard(
          quote: q,
          delete: () {
            setState(() {
              quotes.remove(q);
            });
          }
        )).toList(),
      ),
    );
  }
}

