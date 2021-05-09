import 'package:flutter/material.dart';

class ItemDetail extends StatelessWidget {
  final String index;
  final items = List<String>.generate(100, (i) => "$i");

  ItemDetail(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(index),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 60,
                  height: 60,
                  child: Icon(Icons.not_interested),
                ),
                 Column(
                   children: <Widget>[
                     const SizedBox(
                       width: 200,
                       child: Text('instruction of spec'),
                     ),
                     SizedBox(
                       width: 200,
                       child: Text('天井：'),
                     ),
                     SizedBox(
                       width: 200,
                       child: Text('天井：'),
                     ),
                     SizedBox(
                       width: 200,
                       child: Text('天井：'),
                     ),
                     SizedBox(
                       width: 200,
                       child: Text('天井：'),
                     ),
                   ],
                 ),
              ],
            ),
            Row(
              children: <Widget>[
                const SizedBox(
                  width: 200,
                  height: 30,
                  child: Text('回転数'),
                ),
                const SizedBox(
                  width: 60,
                  height: 30,
                  child: Text('期待値'),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: SizedBox(
                        width: 200,
                        height: 30,
                        child: Text('${items[index]}'),
                    ),
                    title: Text('${items[index]}'),

                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
