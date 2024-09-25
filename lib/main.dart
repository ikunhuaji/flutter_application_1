// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times: new',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//             // Text(
//             //   'Hello world',
//             //   textAlign: TextAlign.left,//文本对齐方式
//             // ),

//             // Text(
//             //   "ikun " * 4,//文本重复4次
//             //   maxLines: 1,//最大行数
//             //   overflow: TextOverflow.ellipsis,//截断方式 超出显示省略号
//             // ),

//             // Text(
//             //   "Hello world",
//             //   textScaleFactor: 1.5,//文本缩放 默认1.0
//             // ),

//             // Text(
//             //   "Hello world",
//             //   style: TextStyle(
//             //       color: Colors.blue, //文本颜色
//             //       fontSize: 18.0, //文本大小(精确控制)
//             //       height: 1.2, //行高 fontSize * height = 行高
//             //       fontFamily: "Courier", //字体
//             //       background: Paint()..color = Colors.yellow, //背景
//             //       decoration: TextDecoration.underline, //下划线 可设置上中下
//             //       decorationStyle: TextDecorationStyle.wavy //下划线样式
//             //       ),
//             // ),

//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Text('Hello, Flutter!'),
      ),
    );
  }
}
