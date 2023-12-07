import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:learning_app/core/colors.dart';

import 'package:learning_app/presentation/main_screen/screens/main_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix clone',
      theme: ThemeData(
        scaffoldBackgroundColor: backGroundColor,
        //  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: mainWhite),
            bodyMedium: TextStyle(color: mainWhite),
            bodySmall: TextStyle(color: mainWhite),
          )),
     home: AnimatedSplashScreen(
            duration: 2000,
            splash:const Image(image: AssetImage('assets/images/logo.png'),),
            nextScreen: MainScreen(),
            splashTransition: SplashTransition.sizeTransition,
            animationDuration: const Duration(seconds: 1),
            backgroundColor: backGroundColor)
    );
  }
}




//bloc example
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
  


//   @override
//   Widget build(BuildContext context) {
//     print('thiss print is working');
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: BlocBuilder<CounterBloc,CounterState>(
//           builder: (context,state) {
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 const Text(
//                   'You have pushed the button this many times:',
//                 ),
//                 Text(
//                   "${BlocProvider.of<CounterBloc>(context).state.count}",
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 ),
//               ],
//             );
//           }
//         ),
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           FloatingActionButton(
//             onPressed:() => BlocProvider.of<CounterBloc>(context).add(const Increment()) ,
//             tooltip: 'Increment',
//             child: const Icon(Icons.add),
//           ),
//              FloatingActionButton(
//             onPressed:() => BlocProvider.of<CounterBloc>(context).add(const Decrement()) ,
//             tooltip: 'Increment',
//             child: const Icon(Icons.deblur),
//           ),
//         ],
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
