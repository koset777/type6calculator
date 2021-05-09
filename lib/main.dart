import 'package:flutter/material.dart';
import 'package:type6calculator/machine_spec.dart';
import 'detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'type6cal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'type6cal'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List machineList = getMachineList();

  _MyHomePageState()
  // ignore: empty_constructor_bodies
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: Icon(Icons.home),
        title: const Text('６号機一覧'),
        actions: <Widget>[
          SizedBox(
            width: 54,
            child: TextButton(
              child: Icon(Icons.search),
              onPressed: () {
                // todo
              },
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: machineList.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(machineList[index]),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      ItemDetail(MachineList().machineList[index]),
                  ),
                );
              },
              trailing: IconButton(
                onPressed: () {
                  // todo 押したらアイコンカラーを黄色に変える
                  // todo お気に入りリストに追加
                },
                icon: Icon(Icons.star),
                color: Colors.black38,
              )
            //
          );
        },
      ),
    );
  }
}