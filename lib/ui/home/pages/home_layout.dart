import 'package:flutter/material.dart';
import 'package:learning_games/ui/base_widgets/container_body.dart';
import 'package:learning_games/ui/widgets/category_widget/categories_widget.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ContainerBody(children: [
            CategoriesWidget(),
          ])
        ],
      ),
    );
  }
}
