import 'package:flutter/material.dart';


/*
GridView:

GridView.count():
GridView.count(
        padding: const EdgeInsets.all(8.0),
        crossAxisCount: 6,
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 4.0,
        children: getGrids(),
      )
Nur dann sinnvoll, wenn wir eine feste anzahl Listenelementen haben

GridView.builder():
dynamische : on-demand

GridView.extend():



 */
class Gitterscreen extends StatelessWidget {

  List<Container> getGrids() {
    final List<Container> grids = [];
    for (int i = 1; i <= 9; i++) {
      grids.add(Container(color: Colors.green[100 * i], width: 25, height: 25,));
    }
    for (int i = 1; i <= 9; i++) {
      grids.add(Container(color: Colors.blue[100 * i], width: 25, height: 25,));
    }
    return grids;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(title: Text("Todo")),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemBuilder: (context, index) => getGrids()[index],
        itemCount: getGrids().length,
      )
    );
  }
}