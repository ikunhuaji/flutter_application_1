//跳转详情页
import 'package:flutter/material.dart';

class MovieDetail extends StatefulWidget {
  MovieDetail(
      {Key? key, required this.id, required this.title, required this.image})
      : super(key: key);
  final String id;
  final String title;
  final String image;

  @override
  _MovieDetailState createState() {
    return _MovieDetailState();
  }
}

class _MovieDetailState extends State<MovieDetail> {
  Color _iconColor = Color.fromARGB(255, 58, 57, 57);

  void _changeColor() {
    setState(() {
      _iconColor = _iconColor == Color.fromARGB(255, 58, 57, 57)
          ? Colors.blueAccent
          : Color.fromARGB(255, 58, 57, 57);

      // print(_iconColor);
    });
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Column(
    //     children: <Widget>[
    //       Text('detail'),
    //       Text('${widget.id}'),
    //       Text('${widget.title}'),
    //     ],
    //   ),
    // );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('${widget.title}'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Image.network(
            widget.image,
            width: 180,
            height: 200,
          ),
          Text('电影ID: ${widget.id}'),
          Text('电影名称: ${widget.title}'),
          IconButton(
            //点赞按钮
            onPressed: _changeColor,
            color: _iconColor,
            icon: Icon(
              Icons.thumb_up,
            ),
          ),
          ElevatedButton.icon(
            icon: Icon(Icons.send),
            label: Text("发送"),
            onPressed: () {},
          ),
          OutlinedButton.icon(
              icon: Icon(Icons.add), label: Text("添加"), onPressed: () {}),
          TextButton.icon(
            icon: Icon(Icons.info),
            label: Text("详情"),
            onPressed: () {},
          ),
        ],
      )),
    );
  }
}
