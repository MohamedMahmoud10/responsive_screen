import 'package:flutter/material.dart';
import 'package:untitled/size_config.dart';

class ContainerContent extends StatelessWidget {
  final String icon;
  final String title;
  const ContainerContent({Key? key, required this.icon, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).devicePixelRatio * 6),
      child: Container(
        width: SizeConfig.screenWidth * 0.7,
        height: SizeConfig.screenHeight * 0.7,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Colors.blue),
            borderRadius: SizeConfig.orientation == Orientation.portrait
                ? BorderRadius.circular(
                    MediaQuery.of(context).devicePixelRatio * 100)
                : BorderRadius.circular(
                    MediaQuery.of(context).devicePixelRatio * 100)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              width: SizeConfig.screenHeight * 2,
              height: SizeConfig.screenHeight * 0.09,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.04,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).textScaleFactor * 22),
            )
          ],
        ),
      ),
    );
  }
}
