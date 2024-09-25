//电影应用body列表
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import './detail.dart';

//使用Dio发起数据请求
Dio dio = new Dio();

class MovieList extends StatefulWidget {
  //构造函数
  MovieList({Key? key, required this.mt}) : super(key: key);
  // MovieList({required this.mt}) : super();

  final String mt;

  @override
  _MovieListState createState() {
    return new _MovieListState();
  }
}

//有状态控件结合状态管理类
class _MovieListState extends State<MovieList>
    with AutomaticKeepAliveClientMixin {
  //通过AutomaticKeepAliveClientMixin实现保持状态,翻回原本页面时仍未原本位置

  //默认显示第一页
  int page = 1;
  //每页条数
  int pagesize = 10;
  //电影列表数据·
  var mlist = [];
  //总条数,实现分页效果
  var total = 0;

  @override
  bool get wantKeepAlive => true; //保持状态

// 初始化状态
  @override
  void initState() {
    super.initState();
    //获取电影列表

    // print("init");
    getMovieList();
  }

  //渲染MovieList的UI
  @override
  Widget build(BuildContext context) {
    // return Text("电影界面---" + widget.mt);
    return ListView.builder(
      itemCount: mlist.length, //循环次数
      itemBuilder: (BuildContext ctx, int i) {
        //每次渲染一个item
        var mitem = mlist[i];
        // return Text(mitem['image']);
        return GestureDetector(
          onTap: () {
            // print("click");
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              // return new MovieDetail();

              return new MovieDetail(
                id: mitem['movieId'],
                title: mitem['title'],
                image: mitem['image'],
              );
            }));
          },
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border(top: BorderSide(color: Colors.black))), //背景色
              height: 200,
              child: Row(
                children: <Widget>[
                  Image.network(
                    mitem['image'],
                    width: 130,
                    height: 190,
                    fit: BoxFit.cover, //填充
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 200, //定义高度
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, //横向顶部对齐
                        mainAxisAlignment: MainAxisAlignment.spaceAround, //纵向平分
                        children: <Widget>[
                          // Text('电影编号: ${mitem['movieId']}'),
                          Text('电影名称: ${mitem['title']}'),
                          Text('上映年份: ${mitem['year']}'),
                          Text('电影类型: ${mitem['genres']}'),
                          Text('电影评分: ${mitem['rating']}分'),
                          Text(
                            '主要演员: ${mitem['actor']}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ) //纵向渲染电影信息,
                      )
                ],
              ) //横向渲染图片和电影信息,
              ), //列表封装
        ); //事件触发类
      },
    );
  }

// 获取电影列表方法
  getMovieList() async {
    // int offset = (page - 1) * pagesize;

    var url = 'http://192.168.56.1:8080/flutter-test/movie/queryAll';

    //获取电影列表 start 偏移量 count:每页显示数量
    // var result = await http.get(url);

    var response = await dio.get(url);

    // if (response.statusCode == 200) {
    //   print("成功");
    // }

    var result = response.data;

    // print(result);

//使用setState赋值
    setState(() {
      //dio返回值
      mlist = result;

      // print(mlist);

      // total = result['total'];
    });
  }
}
