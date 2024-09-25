void main() async {
  // //
  // print("hello");

  // //异步  ,  通过async和awit实现同步异步程序
  // //没有 awit  =>  hello => play => res
  // // 有 awit  =>  hello => 5s后 res => play
  // await Future.delayed(new Duration(seconds: 5), () {
  //   print("res\n");
  // });

  // print("play");

  // //

  // res1 => res3 => res2 => all over
  Future.wait([
    Future.delayed(new Duration(seconds: 1), () {
      print("res1\n");
    }),
    Future.delayed(new Duration(seconds: 3), () {
      print("res2\n");
    }),
    Future.delayed(new Duration(seconds: 2), () {
      print("res3\n");
    })
  ]).then((List result) {
    print("all over");
  });
}
