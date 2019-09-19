import 'package:flutter/material.dart';

typedef Null ItemSelectedCallback(int value);

class ListWidget extends StatefulWidget {
  final int count;
  final ItemSelectedCallback onItemSelected;

  ListWidget(
    this.count,
    this.onItemSelected,
  );

  @override
  _ListWidgetState createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: 
      FloatingActionButton(
        child: Icon(Icons.add,
        color: Colors.black,
        ),
        
        backgroundColor: Colors.white,
        onPressed: (){},
      ),
      
       appBar: AppBar(
         title:Text('Users',
         style: TextStyle(
             color: Colors.black),
         ),
         actions: <Widget>[
           IconTheme(
             data: IconThemeData(color: Colors.black),
             child: IconButton(
               icon: Icon(Icons.more_vert,),
               onPressed: (){},
             )
           )
    ],
       backgroundColor: Colors.transparent,
       elevation: 0.0,
       ),
    body:
    ListView.builder(
      itemCount: widget.count,
      itemBuilder: (context, position) {
        return 
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              onTap: () {
                widget.onItemSelected(position);
              },
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(position.toString(), style: TextStyle(fontSize: 22.0),),
                  ),
                ],
              ),
            ),
          
          );
        },),
    );
  }

}