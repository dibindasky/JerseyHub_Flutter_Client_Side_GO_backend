import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/screens/category/widgets/category_list_container.dart';

class CatogoryListViews extends StatelessWidget {
  const CatogoryListViews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) => const CategoryDetailContainer()),
      ),
    );
  }
}
