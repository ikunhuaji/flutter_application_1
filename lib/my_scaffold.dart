//电影应用主体
import 'package:flutter/material.dart';
import 'package:flutter_application_1/movie/list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IKUN 专用',
      theme: ThemeData(
        primarySwatch: Colors.blue, //主题颜色
      ),
      home: MyHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//StatelessWidget和StatefulWidget StatefulWidget内部可变 StatefulWidget内部不可变
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //在 flutter 中每个控件都是一个类
    return DefaultTabController(
        //包含控制器
        length: 3, //控制个数
        child: Scaffold(
            //界面
            appBar: AppBar(
              // 标题栏
              backgroundColor: Colors.blue,
              title: Text('IKUN 电影'),
              centerTitle: true, // 标题是否居中
              actions: <Widget>[
                // 右侧按钮
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {},
                ),
              ],
            ), //标题栏区域
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.all(0),
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    //用户栏
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://img1.baidu.com/it/u=1968668429,2104382916&fm=253&fmt=auto&app=138&f=JPEG?w=507&h=500'),
                    ), //圆形头像
                    accountName: Text('ikunhuaji',
                        style: TextStyle(
                          color: Colors.black,
                        )), //用户名
                    accountEmail: Text('ikun@Test.com',
                        style: TextStyle(
                          color: Colors.lightBlueAccent,
                        )), //邮箱
                    decoration: BoxDecoration(
                      //背景图片
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://img2.baidu.com/it/u=4020675788,3644009848&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500'),
                        fit: BoxFit.cover, //全填充
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('主页'),
                    onTap: () {}, //点击事件
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('设置'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.feedback), //左侧图标
                    title: Text('用户反馈'),
                    onTap: () {},
                    trailing: Icon(Icons.arrow_forward), //右侧图标
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text('退出登录'),
                    onTap: () {},
                  ),
                ],
              ),
            ), //侧边栏区域
            body: TabBarView(
              children: <Widget>[
                MovieList(mt: 'in_theaters'),
                MovieList(mt: 'coming_soon'),
                MovieList(mt: 'top250'),
              ],
            ),
            bottomNavigationBar: Container(
              //美化
              decoration: BoxDecoration(
                  // color: Colors.black,
                  ),
              height: 60,
              child: TabBar(
                labelStyle: TextStyle(height: 0, fontSize: 10),
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.movie_filter), text: '正在热映'),
                  Tab(icon: Icon(Icons.movie_creation), text: '即将上映'),
                  Tab(icon: Icon(Icons.local_movies), text: 'Top250'),
                ],
              ),
            ) //底部导航栏区域(要有控制器 DefaultTabController)
            ));
  }
}
