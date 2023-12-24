import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:movie/theme/ThemeStyle.dart';
import '../service/serverMethod.dart';
import '../../config/common.dart';
import '../pages/MovieDetailPage.dart';
import '../model/MovieDetailModel.dart';
import '../../theme/ThemeSize.dart';
/*-----------------------轮播组件------------------------*/
class SwiperComponent extends StatelessWidget {
  final String classify;
  const SwiperComponent({Key key, this.classify}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getCategoryListService("轮播", classify),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return Container();
          }
          var result = snapshot.data;
          List<MovieDetailModel> swiperDataList = [];
          if (result != null && result['data'] != null) {
            swiperDataList = (result['data'] as List).cast().map((item){
              return MovieDetailModel.fromJson(item);
            }).toList().sublist(0,5); // 顶部轮播组件数
          }
          return Container(
              height: ThemeSize.swiperHeight,
              margin: ThemeStyle.margin,
              child:
              Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return
                    ClipRRect(
                        child:
                          Image.network(
                          swiperDataList[index].localImg != null
                              ? HOST + swiperDataList[index].localImg
                              : swiperDataList[index].img,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(ThemeSize.middleRadius)
                    );
                },
                itemCount: swiperDataList.length,
                // viewportFraction: 0.9,
                // scale: 0.9,
                pagination: SwiperPagination(
                    builder: DotSwiperPaginationBuilder(
                      color: Colors.black54,
                      activeColor: Colors.white,
                    )),
                control: SwiperControl(),
                scrollDirection: Axis.horizontal,
                // viewportFraction: 0.8,
                // scale: 0.9,
                autoplay: true,
                loop: true,
                onTap: (index) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MovieDetailPage(movieItem: swiperDataList[index])));
                },
              ));
        });
  }
}
/*-----------------------轮播组件------------------------*/