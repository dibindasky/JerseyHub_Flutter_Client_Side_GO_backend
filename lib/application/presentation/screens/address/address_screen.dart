import 'package:flutter/material.dart';
import 'package:jerseyhub/application/presentation/utils/colors.dart';
import 'package:jerseyhub/application/presentation/utils/constant.dart';
import 'package:jerseyhub/application/presentation/widgets/appbar.dart';

class ScreenAddress extends StatelessWidget {
  const ScreenAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarMaker(title: 'Add Address'),
      body:  Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const DetailAdderTextField(text: 'Name'),
            const DetailAdderTextField(text: 'House'),
            const DetailAdderTextField(text: 'Street'),
            const DetailAdderTextField(text: 'City'),
            const DetailAdderTextField(text: 'State'),
            const DetailAdderTextField(text: 'Phone'),
            const DetailAdderTextField(text: 'Pin'),
            kHeight10,
            ElevatedButton(onPressed: (){},style: elevatedButtonStyleBlack, child: const Text('Add Address'),)
          ],
        ),
      ),
    );
  }
}

class DetailAdderTextField extends StatelessWidget {
  const DetailAdderTextField({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          width: sWidth * 0.20,
          height: sWidth * 0.08,
          decoration: const BoxDecoration(
              color: kBlack, borderRadius: BorderRadius.all(kRadius5)),
          child: Center(
            child: Text(
              text,
              style: kronOne(color: kWhite),
            ),
          ),
        ),
        kWidth10,
        Container(
          margin: const EdgeInsets.only(top: 20),
          height: sWidth * 0.08,
          width: sWidth * 0.65,
          decoration: const BoxDecoration(
              color: kGrey, borderRadius: BorderRadius.all(kRadius5)),
          child: TextFormField(),
        )
      ],
    );
  }
}
