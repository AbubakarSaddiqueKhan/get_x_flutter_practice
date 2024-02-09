// First we have to make a class which will extend the get x counter class .
// abstract class GetxController extends DisposableInterface with ListenableMixin, ListNotifierMixin
import 'package:get/get.dart';

class CounterController extends GetxController {
  // Create your business logic class and place all variables, methods and controllers inside it. You can make any variable observable using a simple ".obs" .

  // By extending your class with the getx controller class your class will become listenable because the getx controller class will mixin's the listenable  class .

  // Create a variable that is going to be changed and initialize it a value  .

  var counterValue = 0;

  // Now you have to make all of the possible function or event's . in our case of counter we only have two possible event's like increment and decrement .
  //
  //

  void increment() {
    counterValue++;
    // Now we have to call the update method that is used to update or notify it's listener when there is any change in it .

    // Rebuilds GetBuilder each time you call update(); Can take a List of [ids], that will only update the matching GetBuilder( id: ), [ids] can be reused among GetBuilders like group tags. The update will only notify the Widgets, if [condition] is true.

    update();
  }

  void decrement() {
    counterValue--;
    update();
  }
}

// That's all for the counter controller class now we have to make the user interface of the counter app .


