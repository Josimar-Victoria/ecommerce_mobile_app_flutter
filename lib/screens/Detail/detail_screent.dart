import 'package:ecommerce_mobile_app/constants.dart';
import 'package:ecommerce_mobile_app/models/product_model.dart';
import 'package:ecommerce_mobile_app/screens/Detail/detail_app_bar.dart';
import 'package:flutter/material.dart';

class DetailScreent extends StatefulWidget {
  final Product product;
  const DetailScreent({
    super.key,
    required this.product,
  });

  @override
  State<DetailScreent> createState() => _DetailScreentState();
}

class _DetailScreentState extends State<DetailScreent> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kcontentColor,
      body: SafeArea(
          child: Column(
        children: [
          // for back button share and favorite
          DetailAppBar()
        ],
      )),
    );
  }
}
