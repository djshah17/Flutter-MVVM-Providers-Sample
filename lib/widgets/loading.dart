import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Loading extends StatefulWidget {

  const Loading(
      {Key? key})
      : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> with TickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.only(top: 0.0,bottom: 0.0),
      child: Center(
        child:
        LoadingAnimationWidget.discreteCircle(
          color: Colors.green,
          size: 30,
        ),/*SizedBox(
          width: 30,
          height: 30,
          child: CircularProgressIndicator(),
        )*/
      ),
    );

  }

}