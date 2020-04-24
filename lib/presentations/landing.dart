import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return App();
  }
}

class ListItem {
  String todoText;
  bool todoCheck;

  ListItem(this.todoText, this.todoCheck);
}

class _strikeThrough extends StatelessWidget {
  final String todoText;
  final bool todoCheck;

  _strikeThrough(this.todoText, this.todoCheck) : super();

  Widget _widget() {
    if (todoCheck) {
      return Text(
        todoText,
        style: TextStyle(
          decoration: TextDecoration.lineThrough,
          fontStyle: FontStyle.italic,
          fontSize: 22.0,
          color: Colors.red[200],
        ),
      );
    } else {
      return Text(
        todoText,
        style: TextStyle(fontSize: 22.0),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: _widget(),
    );
  }
}

class App extends StatefulWidget {
  @override
  AppState createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  var counter = 0;

  var textController = TextEditingController();
  var popUpTextController = TextEditingController();

  List<ListItem> WidgetList = [];

  @override
  void dispose() {
    textController.dispose();
    popUpTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Todo List"),
        //backgroundColor: Colors.orange[500],
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RadioButtonGroup(
            labels: [
              "Option 1",
              "Option 2",
            ],
            onChange: (String label, int index) => print("label: $label index: $index"),
            onSelected: (String label) => print(label),
          ),

        ],
      ),
    );
  }
}
