// To the counter app . First we have to make a class and extend it with the Get x Controller .
//
import 'package:get/get.dart';

// abstract class GetxController extends DisposableInterface with ListenableMixin, ListNotifierMixin

class CounterController extends GetxController {
  // Create your business logic class and place all variables, methods and controllers inside it. You can make any variable observable using a simple ".obs" .

  // By extending your class with the getx controller class your class will become listenable because the getx controller class will mixin's the listenable  class .

  // Create a variable that is going to be changed .

  var count = 0.obs;

  // Basically we’re using counter as a stream of int type.
  // The . obs is used to make you value observe able or listenable . It mean's it will alway's notify it's listener when there is any change in the value .

  // Now we have to make all of the possible even't . Like in our case of counter we only have two possibilities of increment and decrement in the value of the counter .
  //
  void increment() {
    count++;
  }

  void decrement() {
    count--;
  }
}

// That's all for the counter controller class for handling the value and the click event's . Now we have to make a user interface for our counter app .

