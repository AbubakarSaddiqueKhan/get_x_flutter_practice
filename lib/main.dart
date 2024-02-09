// GetX is an extra-light and powerful solution for Flutter. It combines high-performance state management, intelligent dependency injection, and route management quickly and practically .

// Get x is mostly used for the global state management .

// But it is not the recommended technique . The recommended global state management techniques are provider , river pod and bloc .

// To use th get x in your project . You must have to import the dependencies of the below package .

// flutter pub add get .

import 'package:flutter/material.dart';
import 'package:flutter_getx_implementation_practice/counter_app/getx_counter_app_page_design.dart';
import 'package:flutter_getx_implementation_practice/getx_navigation_system/first_page.dart';
import 'package:flutter_getx_implementation_practice/getx_widgets/getx_important_widgets_deisgn.dart';
import 'package:flutter_getx_implementation_practice/simple_counter_app/getx_counter_app_page_design.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Change the material app with the get material app .

    // this does not modify the MaterialApp of the Flutter, GetMaterialApp is not a modified MaterialApp, it is just a pre-configured Widget, which has the default MaterialApp as a child .

    // Now let's make a counter app with the get x .

    // Get has two different state managers: the simple state manager (we'll call it GetBuilder) and the reactive state manager (GetX/Obx)

    // Get x provide two type's of the state management techniques .
    //
    // Simple state management get builder .
    //
    // Now let's make counter app with the simple technique .

    // For detailed information about the state management in get x . Kindly read it from the official documentation .
    // https://github.com/jonataslaw/getx/blob/master/documentation/en_US/state_management.md .

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      // home: GetXCounterAppPageDesign(),
      // home: const GetXSimpleCounterCounterAppDesign(),
      // home: const FirstPage(),
      home: const GetXImportantWidgetsDesign(),
    );

    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(
    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //     useMaterial3: true,
    //   ),
    //   home: const MyHomePage(title: 'Flutter Demo Home Page'),
    // );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
