import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:overlay_support/overlay_support.dart';

class CommonUtilities{

  static showNotification(dynamic msg){
    showSimpleNotification(Center(child: Text(msg)), background: Colors.green,);
  }

  static showErrorNotification(dynamic msg){
    showSimpleNotification(Center(child: Text(msg)), background: Colors.grey,);
  }

  static printMsg(dynamic msg){
    if (kDebugMode) {
      print(msg);
    }
  }

  static showUtilDialog(BuildContext context,dynamic value){
    /*showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return value;
        }).then((value) => value);*/

    showGeneralDialog(barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          return Transform.scale(
            scale: a1.value,
            child: Opacity(
              opacity: a1.value,
              child: value,
            ),
          );
        },
        transitionDuration: const Duration(milliseconds: 350),
        barrierDismissible: false,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {
      return value;
        });
  }

  static showSnackBar(BuildContext context,dynamic msg){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(msg),
    ));
  }

  static void changeSystemStatusColor(Color color){
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: color, //i like transaparent :-)
      systemNavigationBarColor: color, // navigation bar color
      statusBarIconBrightness: Brightness.light, // status bar icons' color
      systemNavigationBarIconBrightness:Brightness.light,
    ));
  }

  static void changeSystemStatusColorTransparent(Color color){
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, //i like transaparent :-)
      systemNavigationBarColor: color, // navigation bar color
      statusBarIconBrightness: Brightness.dark, // status bar icons' color
      systemNavigationBarIconBrightness:Brightness.dark,
      //statusBarBrightness: Brightness.light,//navigation bar icons' color
    ));
  }

  static void toastMessage(bool success, String message,BuildContext context){
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Container(
            color: success? Colors.green: Colors.red,
            padding: const EdgeInsets.all(10),
            child: Text(
              message,
            ),
          ),
        ),
      );
  }
}