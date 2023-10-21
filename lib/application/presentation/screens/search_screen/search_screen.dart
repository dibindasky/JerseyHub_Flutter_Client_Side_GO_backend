import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/widgets/inventory_tile.dart';

import '../../widgets/custom_search_field.dart';

class ScreenSearch extends StatefulWidget {
  const ScreenSearch({super.key});

  @override
  State<ScreenSearch> createState() => _ScreenSearchState();
}

class _ScreenSearchState extends State<ScreenSearch>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool isSort = false;
  @override
  void initState() {
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            child: Row(
              children: [
                const Flexible(flex: 6, child: CoustomSearchField()),
                Flexible(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (isSort) {
                          controller.reverse();
                          isSort = !isSort;
                        } else {
                          controller.forward();
                          isSort = !isSort;
                        }
                      });
                    },
                    icon: AnimatedIcon(
                        icon: AnimatedIcons.menu_close, progress: controller),
                  ),
                ),
              ],
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: AnimatedContainer(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(kRadius10),
            border: const Border(),
            color: isSort ? kGrey.withOpacity(0.5) : kGrey,
          ),
          curve: Curves.easeInQuad,
          // curve: Curves.linearToEaseOut,
          duration: const Duration(milliseconds: 500),
          height: isSort ? sWidth * 0.50 : sWidth * 0.005,
          width: isSort ? sWidth : sWidth * 0.05,
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(10),
          child: Wrap(runSpacing: 10, spacing: 20, children: [
            AnimatedCrossFade(
              secondChild: ElevatedButton(
                onPressed: () {},
                style: elevatedButtonStyleWhite,
                child: const Text('Price Low to High'),
              ),
              firstChild: kWidth10,
              crossFadeState: !isSort
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 500),
            ),
            AnimatedCrossFade(
              secondChild: ElevatedButton(
                onPressed: () {},
                style: elevatedButtonStyleWhite,
                child: const Text('Price High to Low'),
              ),
              firstChild: kWidth10,
              crossFadeState: !isSort
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 500),
            ),
            AnimatedCrossFade(
              secondChild: ElevatedButton(
                onPressed: () {},
                style: elevatedButtonStyleWhite,
                child: const Text('Offers'),
              ),
              firstChild: kWidth10,
              crossFadeState: !isSort
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 500),
            ),
            AnimatedCrossFade(
              secondChild: ElevatedButton(
                onPressed: () {},
                style: elevatedButtonStyleBlack,
                child: const Text('Football'),
              ),
              firstChild: kWidth10,
              crossFadeState: !isSort
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 500),
            ),
            AnimatedCrossFade(
              secondChild: ElevatedButton(
                onPressed: () {},
                style: elevatedButtonStyleWhite,
                child: const Text('Basketball'),
              ),
              firstChild: kWidth10,
              crossFadeState: !isSort
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 500),
            ),
            AnimatedCrossFade(
              secondChild: ElevatedButton(
                onPressed: () {},
                style: elevatedButtonStyleWhite,
                child: const Text('Cricket'),
              ),
              firstChild: kWidth10,
              crossFadeState: !isSort
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(milliseconds: 500),
            ),
          ]),
        )),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 1 / 1.5,
            mainAxisSpacing: 10,
            crossAxisSpacing: 20,
            crossAxisCount: 2,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return const InventoryTile();
            },
            childCount: 10,
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(height: sWidth * 0.20),
        )
      ],
    );
  }
}
