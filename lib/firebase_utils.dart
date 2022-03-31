import 'package:c5_online_todo/model/task.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

 CollectionReference<Task> getTasksCollection(){
  var typedCollection = FirebaseFirestore.instance
      .collection('tasks')
      .withConverter<Task>(
      fromFirestore:(snapshot, options) => Task.fromJson(snapshot.data()!) ,
      toFirestore: (task,options)=>task.toJson());
  return typedCollection;
}

 Future<void> addTaskToFirestore(Task task){
  var collection = getTasksCollection();
  var docRef = collection.doc();
  task.id = docRef.id;
  return docRef.set(task);
 }
 void deleteTaskFromFireStore(Task task){
  getTasksCollection()
      .doc(task.id)
      .delete();
 }
 Future<QuerySnapshot<Task>> getTasks(DateTime dateTime){
   return getTasksCollection()
//   .where('date',isGreaterThanOrEqualTo: dateTime.millisecondsSinceEpoch)
   .where('date',isEqualTo: DateUtils.dateOnly(dateTime).millisecondsSinceEpoch)
       .get();
 }
 Stream<QuerySnapshot<Task>> listenForTasks(DateTime dateTime){
   return getTasksCollection()
//   .where('date',isGreaterThanOrEqualTo: dateTime.millisecondsSinceEpoch)
   .where('date',isEqualTo: DateUtils.dateOnly(dateTime).millisecondsSinceEpoch)
       .snapshots();
 }