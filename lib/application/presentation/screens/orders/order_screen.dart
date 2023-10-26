import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/routes/routes.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';

class ScreenMyOrders extends StatelessWidget {
  const ScreenMyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Orders',
          style: kronOne(fontSize: 0.05),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(context, Routes.orderDetailScreen);
              },
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                height: sWidth * 0.3,
                width: sWidth,
                decoration: const BoxDecoration(
                    boxShadow: [BoxShadow(color: kBlack)],
                    color: kGrey,
                    borderRadius: BorderRadius.all(kRadius10),
                    border: Border()),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: sWidth * 0.22,
                      width: sWidth * 0.18,
                      decoration: BoxDecoration(
                          image:
                              DecorationImage(image: NetworkImage(manjestCity)),
                          boxShadow: [
                            BoxShadow(
                                color: kBlack.withOpacity(0.8),
                                blurRadius: 1.5,
                                offset: const Offset(0, 2))
                          ],
                          color: kWhite,
                          borderRadius: const BorderRadius.all(kRadius10)),
                    ),
                    kWidth20,
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Item Name',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 18),
                        ),
                        kHeight10,
                        Text('Expeted delivery on Tuesday'),
                        kHeight5,
                        Text(
                          'Cash on delevery',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const Spacer(),
                    const Align(
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 15,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
