import 'package:flutter/material.dart';
import 'package:untitled/size_config.dart';

import 'components/grid_view.dart';
import 'components/image_slider.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              const ImageSlider(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.03,
              ),
              const GridViewWidget()
            ],
          ),
        ),
      ),
    );
  }
}
