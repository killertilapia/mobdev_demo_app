
import 'package:flutter/cupertino.dart';

class Counter{
  int count;

  Counter(this.count);

  increment(){
    count++;
  }
}

class CountProvider extends InheritedWidget{
  final Counter counter;
  final Widget child;

  CountProvider({this.counter, this.child});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }

  static CountProvider of(BuildContext context){

    //return (context.inheritFromWidgetOfExactType(CountProvider) as CountProvider); // this is deprecated
    return context.dependOnInheritedWidgetOfExactType<CountProvider>();
  }
}