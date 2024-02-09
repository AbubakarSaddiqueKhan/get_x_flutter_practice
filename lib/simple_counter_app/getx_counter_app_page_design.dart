import 'package:flutter/material.dart';
import 'package:flutter_getx_implementation_practice/simple_counter_app/counter_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class GetXSimpleCounterCounterAppDesign extends StatelessWidget {
  const GetXSimpleCounterCounterAppDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get X Counter App Design Simple Technique"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Where you want's some change in the ui just you show call the get builder widget .
            GetBuilder<CounterController>(
              // We have to initialize our controller only the first time and the second time we use ReBuilder for the same controller, do not initialize it again.
              init: CounterController(),
              builder: (controller) => Text(
                controller.counterValue.toString(),
                style:
                    const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            GetBuilder<CounterController>(
              builder: (controller) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      controller.increment();
                    },
                    child: Container(
                      width: 250,
                      height: 70,
                      color: Colors.amber,
                      alignment: Alignment.center,
                      child: const Text("Increment"),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  InkWell(
                    onTap: () {
                      controller.decrement();
                    },
                    child: Container(
                      width: 250,
                      height: 70,
                      color: Colors.yellow,
                      alignment: Alignment.center,
                      child: const Text("Decrement"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


// That's all for the simple technique of get builder .
//  GetBuilder is not reactive means we’ll not able to use streams for this we have to use GetX class. 