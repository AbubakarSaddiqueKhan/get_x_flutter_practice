// Create your View, use StatelessWidget and save some RAM, with Get you may no longer need to use StatefulWidget .

import 'package:flutter/material.dart';
import 'package:flutter_getx_implementation_practice/counter_app/counter_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/instance_manager.dart';

class GetXCounterAppPageDesign extends StatelessWidget {
  GetXCounterAppPageDesign({super.key});

  // Now it's time to make the constructor of the counter controller class .

  // Previously we make the constructor or the object of the class by .
  //
  // CounterController counterController = CounterController();
  //
  // but now we don't make ot on this syntax .
  //
  //  Instantiate your class using Get.put() to make it available for all "child" routes there.
  final CounterController counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get X Counter App design"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Now use the obx widget where you want's display the change .
            // We can use the Obx widget instead of GetX which gives us anonymous function that creates a widget for us and to use our variables and methods from our view we need to initialize the Controller first like this,
            Obx(() => Text(
                  counterController.count.toString(),
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                )),
            InkWell(
              onTap: () {
                counterController.increment();
              },
              child: Container(
                width: 300,
                height: 70,
                color: Colors.amber,
                alignment: Alignment.center,
                child: const Text("Increment"),
              ),
            ),
            InkWell(
              onTap: () {
                counterController.decrement();
              },
              child: Container(
                width: 300,
                height: 70,
                color: Colors.yellow,
                alignment: Alignment.center,
                child: const Text("Decrement"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
