import 'package:flutter/material.dart';

void showLoading(BuildContext context, 
    String message,{bool isCancelable = false}){
  showDialog(context: context, builder: (buildContext){
    return AlertDialog(
      content: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircularProgressIndicator(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(message),
          )
        ],
      ),
    );
  },barrierDismissible: isCancelable);
}
void hideDialog(BuildContext context){
  Navigator.pop(context);
}
void showMessage(BuildContext context,
    String message, String posActionText,
    VoidCallback posAction,
    {String? negActionText=null,
      VoidCallback? negAction=null,
    bool isCancelable=true}){

  showDialog(context: context,
      barrierDismissible: isCancelable,
      builder: (builContext){
    List<Widget> actions = [
      TextButton(onPressed: posAction,
          child: Text(posActionText)),
    ];

    if(negActionText!=null){
      actions.add(TextButton(onPressed: negAction,
          child: Text(negActionText)),
      );
    }
    return AlertDialog(
      content: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(message),
      ),
      actions:actions ,
    );
  });
  
}