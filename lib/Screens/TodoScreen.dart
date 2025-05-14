import 'package:flutter/material.dart';


/*
ListView lädet nur die Items, welche wir auf dem Display sehen.


SingleChildScrollView + Column:
SingleChildScrollView(
          child: Column(
            children:
            getTodos()
          ),
        )

ListView:
      body: ListView(
            children:
            getTodos()
          ),
    );

builder:
  body: ListView.builder(
            itemBuilder: (BuildContext context, int index){
              return getTodos()[index];
            },
          itemCount: getTodos().length,
        ),

separated:
body: ListView.separated(
            separatorBuilder: (context, index) => Divider(thickness: 2,),
            itemBuilder: (BuildContext context, int index){
              return getTodos()[index];
            },
          itemCount: getTodos().length,
        ),
 */
class TodoScreen extends StatelessWidget {

  List<TodoItem> getTodos() {
    final List<TodoItem> todos = [];
    for (int i = 0; i < 50; i++) {
      todos.add(TodoItem(title: 'Item $i'));
    }
    return todos;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(title: Text("Todo")),
        body: ListView.separated(
            separatorBuilder: (context, index) => Divider(thickness: 2,),
            itemBuilder: (BuildContext context, int index){
              return getTodos()[index];
            },
          itemCount: getTodos().length,
        ),
    );
  }
}
class TodoItem extends StatelessWidget {
  const TodoItem({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            color: Colors.white,
            width: double.infinity,
            height: 35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
                Container(
                  color: Colors.grey[400],
                  width: 20,
                  height: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}