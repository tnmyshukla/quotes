import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_Card.dart';
void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}
class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes=[
  Quote( 'It Doesn\t Matter Where You Came From. All That Matters Is Where You Are Going.','Oscar Wilde'),
  Quote('Think Big And Don\t Listen To People Who Tell You It Can’t Be Done. Life’s Too Short To Think Small.','Oscar Wilde'),
  Quote('You Can Develop Any Habit Or Thought Or Behavior That You Consider Desirable Or Necessary.','Oscar Wilde'),
  ];
  // Widget quoteTemplate(quote){
  //   return quoteCard(quote:quote);
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Awesome quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body:Column(
        children: quotes.map((quote){
          return quoteCard(
              quote:quote,
              delete: (){
                setState(() {
                  quotes.remove(quote);
                });
          }
          );
        }).toList(),
      ),
    );
  }
}


