import 'package:c5_online_todo/firebase_utils.dart';
import 'package:c5_online_todo/model/task.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskWidget extends StatelessWidget {

  Task task;
  TaskWidget(this.task);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        extentRatio: .25,
        motion: DrawerMotion(),
        children: [
          SlidableAction(onPressed: (buildContext){
            // delete task
            deleteTaskFromFireStore(task);
          },
            label: 'Delete',
          backgroundColor: Theme.of(context).colorScheme.error,
            icon: Icons.delete,
          )
        ],
      ),
      child: Container(
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
                child: Text(task.title,style: Theme.of(context).textTheme.subtitle1,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(task.description,style: Theme.of(context).textTheme.bodyText1,),
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
      ),
    );
  }
}
