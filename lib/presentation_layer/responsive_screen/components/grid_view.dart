import 'package:flutter/material.dart';
import 'package:untitled/size_config.dart';

import '../../../dummy_data.dart';
import 'container_content.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GridView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SizeConfig.orientation == Orientation.portrait
            ? const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              )
            : const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ContainerContent(
            icon: data[index].iconRoot!,
            title: data[index].title!,
          );
        });
  }
}
