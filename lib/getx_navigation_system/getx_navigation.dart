import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class GetXNavigation {
  void goToNextPage(StatelessWidget page) {
    // Get x is the replacement of the Navigator . of push ( ) ;
    // In the widget we will give the page like second page or third page etc .

    Get.to(page);
  }

  void goToPreviousPage() {
    // Replacement of the navigator . pop ;
    Get.back();
  }

  void otherImportantFunctionsDocumentation(StatelessWidget page) async {
    // To go to the next screen and no option to go back to the previous screen (for use in SplashScreens, login screens and etc.)

    Get.off(page);

    // You can send data using the argument's property inside every navigation method of the get x .

    // To go to the next screen and cancel all previous routes (useful in shopping carts, polls, and tests)

    Get.off(page);

    // To go to the next screen and cancel all previous routes (useful in shopping carts, polls, and tests)

    Get.offAll(page);

    // To navigate to the next route, and receive or update data as soon as you return from it:

    var data = await Get.to(
      page,
    );

    // To send the data to the next page

    Get.to(page, arguments: "Data");

// To send the data back to the previous route .

    Get.back(result: 'data');
  }

  // To go to the next screen and no option to go back to the previous screen (for use in SplashScreens, login screens and etc.)
}

// Noticed that you didn't have to use context to do any of these things? That's one of the biggest advantages of using Get route management. With this, you can execute all these methods from within your controller class, without worries.
