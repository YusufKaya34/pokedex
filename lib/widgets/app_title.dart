import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/constants/ui_helper.dart';

class AppTitle extends StatefulWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  State<AppTitle> createState() => _AppTitleState();
}

class _AppTitleState extends State<AppTitle> {
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: UIHelper.getAppTitleWidget(),
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.getDefaultPadding() ,
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  Constants.title,
                  style: Constants.titleTextStyle(),
                )),
          ),
          Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                Constants.pokeballImageUrl,
                width: ScreenUtil().orientation == Orientation.portrait ? 0.2.sh : 0.2.sw,
                fit: BoxFit.fitWidth,
              )),
        ],
      ),
    );
  }
}
