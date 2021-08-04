import 'package:flutter/material.dart';
import '../model/MovieDetailModel.dart';
import '../component/RecommendComponent.dart';
class NewMoviePage extends StatefulWidget {
  final MovieDetailModel movieItem;
  NewMoviePage({Key key, this.movieItem}) : super(key: key);

  @override
  _NewMoviePageState createState() => _NewMoviePageState();
}

class _NewMoviePageState extends State<NewMoviePage> {
  bool isFavoriteFlag = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(widget.movieItem);
    return Scaffold(
        body: SingleChildScrollView(child:
            Padding(padding: EdgeInsets.all(10),child:Column(children:[
              RecommendComponent(classify: "电影",direction: "vertical",title:"电影"),
              RecommendComponent(classify: "电视剧",direction: "vertical",title:"电视剧")
            ]))
        ,)
    );
  }
}
