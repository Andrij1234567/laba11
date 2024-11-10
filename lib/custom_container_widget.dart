import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'slider_provider.dart';

class CustomContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SliderProvider>(context);

    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(provider.topLeft),
          topRight: Radius.circular(provider.topRight),
          bottomLeft: Radius.circular(provider.bottomLeft),
          bottomRight: Radius.circular(provider.bottomRight),
        ),
      ),
    );
  }
}
