import 'package:flutter/material.dart';
import 'package:flutter_getx_implementation_practice/getx_navigation_system/getx_navigation.dart';
import 'package:flutter_getx_implementation_practice/getx_navigation_system/third_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page Navigation"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Second Page",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            InkWell(
              onTap: () {
                GetXNavigation().goToNextPage(const ThirdPage());
              },
              child: Container(
                width: 300,
                height: 60,
                alignment: Alignment.center,
                color: Colors.amber,
                child: const Text("Go To Next Page"),
              ),
            ),
            InkWell(
              onTap: () {
                GetXNavigation().goToPreviousPage();
              },
              child: Container(
                width: 300,
                height: 60,
                alignment: Alignment.center,
                color: Colors.grey.shade300,
                child: const Text("Go To Previous Page"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
