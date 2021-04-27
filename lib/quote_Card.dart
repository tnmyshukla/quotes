import 'package:flutter/material.dart';
import 'quote.dart';

class quoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  quoteCard({this.quote,this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 16.0,
              ),
            ),
            Text(
              quote.author,
              style: TextStyle(
                color: Colors.grey[1000],
                fontSize: 14.0,
              ),
            ),
            FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('Delete quote')
            ),
          ],
        ),
      ),
    );
  }
}