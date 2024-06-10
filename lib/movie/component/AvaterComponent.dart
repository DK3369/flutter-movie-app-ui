import 'package:flutter/material.dart';
import 'package:movie/router/index.dart';
import '../../config/common.dart';
import '../provider/UserInfoProvider.dart';
import 'package:provider/provider.dart';

/*-----------------------头像组件------------------------*/
class AvaterComponent extends StatelessWidget {
  final double size;
  const AvaterComponent({required Key key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Routes.router.navigateTo(context, '/MovieUserPage');
      },
      child: Container(
          width: size,
          height: size,
          child: ClipOval(
            child: Image.network(
              //从全局的provider中获取用户信息
              HOST +
                  Provider.of<UserInfoProvider>(context).userInfo.avater,
              height: size,
              width: size,
              fit: BoxFit.cover,
            ),
          )),
    );
  }
}
/*-----------------------头像组件------------------------*/