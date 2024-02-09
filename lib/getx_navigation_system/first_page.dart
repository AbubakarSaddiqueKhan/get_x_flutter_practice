import 'package:flutter/material.dart';
import 'package:flutter_getx_implementation_practice/getx_navigation_system/getx_navigation.dart';
import 'package:flutter_getx_implementation_practice/getx_navigation_system/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page Navigation"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "FIrst Page",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {
                GetXNavigation().goToNextPage(const SecondPage());
              },
              child: Container(
                width: 300,
                height: 60,
                alignment: Alignment.center,
                color: Colors.amber,
                child: const Text("Go To Next Page"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
