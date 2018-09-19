import 'package:flutter/material.dart';

class Showtext extends StatefulWidget {
  Showtext({Key key}) : super(key: key);

  @override
  _ShowtextState createState() => _ShowtextState();
}

class _ShowtextState extends State<Showtext> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("テキストを表示"),
      ),
      body: ListView(
        children: <Widget>[
          Text("normaltext"),
          Text(
            "redtext",
            style: TextStyle(color: Colors.red),
          ),
          Text(
            "largetext",
            style: TextStyle(fontSize: 30.0),
          ),
          Text(
            "boldtext",
            style: TextStyle(fontWeight: FontWeight.w900),
          ),
          Text(
            "centertext",
            textAlign: TextAlign.center,
          ),
          Text(
            "long text long text long text long text long text long text long text long text long text long text long text long text long text long text long text ",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

class Showimage extends StatefulWidget {
  Showimage({Key key}) : super(key: key);

  @override
  _ShowimageState createState() => _ShowimageState();
}

class _ShowimageState extends State<Showimage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Image.network(
          "https://pbs.twimg.com/profile_images/945853318273761280/0U40alJG_200x200.jpg"),
    );
  }
}

class Showlist extends StatefulWidget {
  Showlist({Key key}) : super(key: key);

  @override
  _ShowlistState createState() => _ShowlistState();
}

class _ShowlistState extends State<Showlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("リスト"),
      ),
      body: ListView(
        children: <Widget>[
          Text("リスト"),
          Text("リスト"),
          Text("リスト"),
          Image.network(
              "https://pbs.twimg.com/profile_images/945853318273761280/0U40alJG_200x200.jpg")
        ],
      ),
    );
  }
}

class Textbox extends StatefulWidget {
  Textbox({Key key}) : super(key: key);

  @override
  _TextboxState createState() => _TextboxState();
}

class _TextboxState extends State<Textbox> {
  String inputtext = "デフォルト";
  TextEditingController textcontoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("テキストボックス"),
      ),
      body: ListView(
        children: <Widget>[
          Text(inputtext),
          TextFormField(
            controller: textcontoller,
            decoration: InputDecoration(
              labelText: "textbox",
              hintText: "textbox2",
              prefixText: "textbox3",
              prefixIcon: Icon(Icons.email),
              suffixText: "textbox4",
            ),
          ),
          RaisedButton(
            child: Text("update"),
            onPressed: () {
              String sendtext = textcontoller.text;
              // print(sendtext);
              setState(() {
                inputtext = sendtext;
                // textcontoller.text = "some random text";
              });
            },
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Container(),
    );
  }
}
