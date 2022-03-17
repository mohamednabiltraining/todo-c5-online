import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(12),
      child: Row(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            width: 2,
            height: 80,
          ),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Task Title",style: Theme.of(context).textTheme.subtitle1,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Task Title",style: Theme.of(context).textTheme.bodyText1,),
            )
          ],)),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).primaryColor
            ),
            padding:EdgeInsets.symmetric(vertical: 8,horizontal: 24) ,
            child: Icon(Icons.check,color: Colors.white,),
          )
        ],
      ),
    );
  }
}
