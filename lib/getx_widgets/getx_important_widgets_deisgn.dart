import 'package:flutter/material.dart';
import 'package:flutter_getx_implementation_practice/getx_widgets/show_getx_important_widgets_code.dart';

class GetXImportantWidgetsDesign extends StatelessWidget {
  const GetXImportantWidgetsDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Get X Important Widgets"),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    showGetXStyleDialog();
                  },
                  child: Container(
                    width: 250,
                    height: 60,
                    color: Colors.amber,
                    alignment: Alignment.center,
                    child: const Text("Show Default Dialog"),
                  ),
                ),
                //     InkWell(
                //       onTap: () {
                //         showGetXBottomSheet();
                //       },
                //       child: Container(
                //         width: 250,
                //         height: 60,
                //         color: Colors.amber,
                //         alignment: Alignment.center,
                //         child: const Text("Show Bottom Sheet"),
                //       ),
                //     )
                //   ],
                // ),
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   crossAxisAlignment: CrossAxisAlignment.center,
                //   children: [
                //     InkWell(
                //       onTap: () {
                //         showGetXDialog();
                //       },
                //       child: Container(
                //         width: 250,
                //         height: 60,
                //         color: Colors.amber,
                //         alignment: Alignment.center,
                //         child: const Text("Show Dialog"),
                //       ),
                //     )
              ],
            )
          ],
        ),
      ),
    );
  }
}
