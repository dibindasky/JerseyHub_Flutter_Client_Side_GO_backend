// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jerseyhub/application/presentation/screens/bottom_bar/widgets/appbar.dart';
import 'package:jerseyhub/application/presentation/screens/favourite/favourite_screen.dart';
import 'package:jerseyhub/application/presentation/screens/home/home_screen.dart';
import 'package:jerseyhub/application/presentation/screens/profile/profile_screen.dart';
import 'package:jerseyhub/application/presentation/screens/search/search_screen.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class ScreenBottombar extends StatefulWidget {
  const ScreenBottombar({Key? key}) : super(key: key);

  @override
  _ScreenBottombarState createState() => _ScreenBottombarState();
}

class _ScreenBottombarState extends State<ScreenBottombar>
    with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;

  @override
  void initState() {
    currentPage = 0;
    tabController = TabController(length: 4, vsync: this);
    tabController.animation!.addListener(
      () {
        final value = tabController.animation!.value.round();
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    super.initState();
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: mainAppbar(),
          body: BottomBar(
            fit: StackFit.expand,
            icon: (width, height) => Center(
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: null,
                icon: Icon(
                  Icons.arrow_upward_rounded,
                  color: kBlack,
                  size: width,
                ),
              ),
            ),
            borderRadius: BorderRadius.circular(500),
            duration: const Duration(seconds: 1),
            curve: Curves.decelerate,
            showIcon: true,
            width: sWidth * 0.70,
            barColor: kBlack,
            start: 2,
            end: 0,
            offset: 10,
            barAlignment: Alignment.bottomCenter,
            iconHeight: 35,
            iconWidth: 35,
            reverse: false,
            // barDecoration: BoxDecoration(
            //   color: Colors.transparent,
            //   borderRadius: BorderRadius.circular(500),
            // ),
            iconDecoration: BoxDecoration(
              color: kWhite,
              borderRadius: BorderRadius.circular(500),
            ),
            hideOnScroll: true,
            scrollOpposite: false,
            onBottomBarHidden: () {},
            onBottomBarShown: () {},
            body: (context, controller) => Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: TabBarView(
                  controller: tabController,
                  dragStartBehavior: DragStartBehavior.down,
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    ScreenHome(),
                    ScreenSearch(),
                    ScreenFavourite(),
                    ScreenProfile()
                  ]),
            ),
            child: SizedBox(
              height: sWidth * 0.17,
              child: TabBar(
                controller: tabController,
                unselectedLabelColor: kGrey,
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(
                    icon: currentPage == 0
                        ? const CircleAvatar(
                            backgroundColor: kWhite,
                            child: Icon(Iconsax.home),
                          )
                        : const Icon(Iconsax.home),
                  ),
                  Tab(
                    icon: currentPage == 1
                        ? const CircleAvatar(
                            backgroundColor: kWhite,
                            child: Icon(Iconsax.search_normal_1),
                          )
                        : const Icon(Iconsax.search_normal_1),
                  ),
                  Tab(
                    icon: currentPage == 2
                        ? const CircleAvatar(
                            backgroundColor: kWhite,
                            child: Icon(Iconsax.lovely),
                          )
                        : const Icon(Iconsax.lovely),
                  ),
                  Tab(
                    icon: currentPage == 3
                        ? const CircleAvatar(
                            backgroundColor: kWhite,
                            child: Icon(Iconsax.profile_circle),
                          )
                        : const Icon(Iconsax.profile_circle),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
