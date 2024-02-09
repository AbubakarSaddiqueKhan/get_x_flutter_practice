import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

void showGetXSnackBar() {
  // GetSnackBar snackBar = const GetSnackBar(
  //   isDismissible: true,
  //   duration: Duration(seconds: 3),
  //   title: "Snackbar Title",
  //   messageText: Text(
  //     "message text",
  //     style: TextStyle(color: Colors.amber),
  //   ),
  //   animationDuration: Duration(seconds: 2),
  //   icon: Icon(
  //     Icons.snapchat,
  //     color: Colors.white,
  //   ),
  // );

//   // Act as a simple snackbar
  // Get.showSnackbar(snackBar);

//   // Act as the pop up notification in the snackbar style .
  Get.snackbar("Title of snackbar", "message of snackbar");
//   // Future.delayed(
//   //   const Duration(seconds: 5),
//   //   () => Get.snackbar("Title of snackbar", "message of snackbar"),
//   // );
// }
}

void showGetXDialog() {
  // Show the full page dialog .
  Get.dialog(Container(
    height: 100,
    width: 300,
    color: Colors.amber,
    alignment: Alignment.center,
    child: const Text(
      "Full Page Dialog Dialog",
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
  ));
}

void showGetXStyleDialog() {
  Get.defaultDialog(
      title: "Default Dialog Title",
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
        IconButton(onPressed: () {}, icon: Icon(Icons.read_more))
      ],
      middleText: "middle text");
}

// void showGetXBottomSheet() {
//   Get.bottomSheet(Container(
//     width: double.infinity,
//     height: 100,
//     color: Colors.amber,
//     alignment: Alignment.center,
//     child: const Text("Bottom Sheet"),
//   ));
// }


// /**
//  * 
//  * // give the current args from currentScreen
// Get.arguments

// // give name of previous route
// Get.previousRoute

// // give the raw route to access for example, rawRoute.isFirst()
// Get.rawRoute

// // give access to Routing API from GetObserver
// Get.routing

// // check if snackbar is open
// Get.isSnackbarOpen

// // check if dialog is open
// Get.isDialogOpen

// // check if bottomsheet is open
// Get.isBottomSheetOpen

// // remove one route.
// Get.removeRoute()

// // back repeatedly until the predicate returns true.
// Get.until()

// // go to next route and remove all the previous routes until the predicate returns true.
// Get.offUntil()

// // go to next named route and remove all the previous routes until the predicate returns true.
// Get.offNamedUntil()

// //Check in what platform the app is running
// GetPlatform.isAndroid
// GetPlatform.isIOS
// GetPlatform.isMacOS
// GetPlatform.isWindows
// GetPlatform.isLinux
// GetPlatform.isFuchsia

// //Check the device type
// GetPlatform.isMobile
// GetPlatform.isDesktop
// //All platforms are supported independently in web!
// //You can tell if you are running inside a browser
// //on Windows, iOS, OSX, Android, etc.
// GetPlatform.isWeb


// // Equivalent to : MediaQuery.of(context).size.height,
// // but immutable.
// Get.height
// Get.width

// // Gives the current context of the Navigator.
// Get.context

// // Gives the context of the snackbar/dialog/bottomsheet in the foreground, anywhere in your code.
// Get.contextOverlay

// // Note: the following methods are extensions on context. Since you
// // have access to context in any place of your UI, you can use it anywhere in the UI code

// // If you need a changeable height/width (like Desktop or browser windows that can be scaled) you will need to use context.
// context.width
// context.height

// // Gives you the power to define half the screen, a third of it and so on.
// // Useful for responsive applications.
// // param dividedBy (double) optional - default: 1
// // param reducedBy (double) optional - default: 0
// context.heightTransformer()
// context.widthTransformer()

// /// Similar to MediaQuery.sizeOf(context);
// context.mediaQuerySize()

// /// Similar to MediaQuery.paddingOf(context);
// context.mediaQueryPadding()

// /// Similar to MediaQuery.viewPaddingOf(context);
// context.mediaQueryViewPadding()

// /// Similar to MediaQuery.viewInsetsOf(context);
// context.mediaQueryViewInsets()

// /// Similar to MediaQuery.orientationOf(context);
// context.orientation()

// /// Check if device is on landscape mode
// context.isLandscape()

// /// Check if device is on portrait mode
// context.isPortrait()

// /// Similar to MediaQuery.devicePixelRatioOf(context);
// context.devicePixelRatio()

// /// Similar to MediaQuery.textScaleFactorOf(context);
// context.textScaleFactor()

// /// Get the shortestSide from screen
// context.mediaQueryShortestSide()

// /// True if width be larger than 800
// context.showNavbar()

// /// True if the shortestSide is smaller than 600p
// context.isPhone()

// /// True if the shortestSide is largest than 600p
// context.isSmallTablet()

// /// True if the shortestSide is largest than 720p
// context.isLargeTablet()

// /// True if the current device is Tablet
// context.isTablet()

// /// Returns a value<T> according to the screen size
// /// can give value for:
// /// watch: if the shortestSide is smaller than 300
// /// mobile: if the shortestSide is smaller than 600
// /// tablet: if the shortestSide is smaller than 1200
// /// desktop: if width is largest than 1200
// context.responsiveValue<T>()

//  */


// // Declaring a reactive variable
// // You have 3 ways to turn a variable into an "observable".

// // 1 - The first is using Rx{Type}.

// // initial value is recommended, but not mandatory
// final name = RxString('');
// final isLogged = RxBool(false);
// final count = RxInt(0);
// final balance = RxDouble(0.0);
// final items = RxList<String>([]);
// final myMap = RxMap<String, int>({});
// // 2 - The second is to use Rx and use Darts Generics, Rx<Type>

// final name = Rx<String>('');
// final isLogged = Rx<Bool>(false);
// final count = Rx<Int>(0);
// final balance = Rx<Double>(0.0);
// final number = Rx<Num>(0);
// final items = Rx<List<String>>([]);
// final myMap = Rx<Map<String, int>>({});

// // Custom classes - it can be any class, literally
// final user = Rx<User>();
// // 3 - The third, more practical, easier and preferred approach, just add .obs as a property of your value :

// final name = ''.obs;
// final isLogged = false.obs;
// final count = 0.obs;
// final balance = 0.0.obs;
// final number = 0.obs;
// final items = <String>[].obs;
// final myMap = <String, int>{}.obs;

// // Custom classes - it can be any class, literally
// final user = User().obs;